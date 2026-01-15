<# 
.SYNOPSIS
    Forge CLI - 認知ハイパーバイザー・プロンプトシステム

.DESCRIPTION
    Forgeモジュールを検索・表示するためのCLIツール

.EXAMPLE
    .\forge.ps1 list
    .\forge.ps1 load "決断"
    .\forge.ps1 search "TDD"
    .\forge.ps1 tree
    .\forge.ps1 start
#>

param(
    [Parameter(Position=0)]
    [string]$Command = "help",
    
    [Parameter(Position=1, ValueFromRemainingArguments=$true)]
    [string[]]$Arguments
)

$Script:BaseDir = $PSScriptRoot
$Script:IndexFile = Join-Path $BaseDir ".forge-index.json"

# ディレクトリマッピング
$Script:Directories = @{
    "find"      = Join-Path $BaseDir "modules\find"
    "expand"    = Join-Path $BaseDir "modules\think\expand"
    "focus"     = Join-Path $BaseDir "modules\think\focus"
    "prepare"   = Join-Path $BaseDir "modules\act\prepare"
    "create"    = Join-Path $BaseDir "modules\act\create"
    "reflect"   = Join-Path $BaseDir "modules\reflect"
    "protocols" = Join-Path $BaseDir "protocols"
    "knowledge" = Join-Path $BaseDir "knowledge"
    "helpers"   = Join-Path $BaseDir "helpers"
}

# カテゴリ表示名
$Script:CategoryNames = @{
    "find"      = "🔎 見つける (Find)"
    "expand"    = "🧠📊 考える/広げる (Think/Expand)"
    "focus"     = "🧠🎯 考える/絞る (Think/Focus)"
    "prepare"   = "⚡🔧 働きかける/固める (Act/Prepare)"
    "create"    = "⚡✨ 働きかける/生み出す (Act/Create)"
    "reflect"   = "🔄 振り返る (Reflect)"
    "protocols" = "🛡️ プロトコル (Protocols)"
    "knowledge" = "📚 知識ベース (Knowledge)"
    "helpers"   = "🔧 ヘルパー (Helpers)"
}

# ========================================
# セキュリティ: 入力検証
# ========================================
function Test-SafeInput {
    param([string]$Input)
    
    # パストラバーサル攻撃を防止
    if ($Input -match '\.\.[\\/]') {
        Write-Host "⚠️ セキュリティ警告: 無効な入力です" -ForegroundColor Red
        return $false
    }
    
    # 危険な文字を検出
    if ($Input -match '[<>|&;`$]') {
        Write-Host "⚠️ セキュリティ警告: 無効な文字が含まれています" -ForegroundColor Red
        return $false
    }
    
    return $true
}

# ========================================
# パフォーマンス: インデックスキャッシュ
# ========================================
function Get-ModulesInDirectory {
    param([string]$DirPath)
    
    if (-not (Test-Path $DirPath)) {
        return @()
    }
    
    Get-ChildItem -Path $DirPath -Filter "*.md" | ForEach-Object {
        @{
            Name = $_.BaseName
            Path = $_.FullName
        }
    }
}

function Get-AllModules {
    param([switch]$ForceRefresh)
    
    # キャッシュをチェック
    if (-not $ForceRefresh -and (Test-Path $Script:IndexFile)) {
        $cacheAge = (Get-Date) - (Get-Item $Script:IndexFile).LastWriteTime
        if ($cacheAge.TotalMinutes -lt 60) {
            try {
                $cached = Get-Content $Script:IndexFile -Raw | ConvertFrom-Json -AsHashtable
                if ($cached) { return $cached }
            } catch {}
        }
    }
    
    # 新規取得
    $modules = @{}
    foreach ($key in $Script:Directories.Keys) {
        $modules[$key] = @(Get-ModulesInDirectory $Script:Directories[$key])
    }
    
    # キャッシュに保存
    try {
        $modules | ConvertTo-Json -Depth 5 | Set-Content $Script:IndexFile -Encoding UTF8
    } catch {}
    
    return $modules
}

function Update-Index {
    Write-Host "🔄 インデックスを更新中..." -ForegroundColor Cyan
    $modules = Get-AllModules -ForceRefresh
    $total = ($modules.Values | ForEach-Object { $_.Count } | Measure-Object -Sum).Sum
    Write-Host "✅ $total モジュールをインデックス化しました" -ForegroundColor Green
}

# ========================================
# 基本機能
# ========================================
function Show-List {
    param([string]$Category)
    
    $modules = Get-AllModules
    
    Write-Host "`n🔥 Forge - モジュール一覧`n" -ForegroundColor Cyan
    
    foreach ($cat in $modules.Keys) {
        if ($Category -and $cat -ne $Category) { continue }
        if ($modules[$cat].Count -eq 0) { continue }
        
        Write-Host "$($Script:CategoryNames[$cat]) ($($modules[$cat].Count))" -ForegroundColor Yellow
        foreach ($mod in $modules[$cat]) {
            Write-Host "  • $($mod.Name)" -ForegroundColor Gray
        }
        Write-Host ""
    }
}

function Show-Module {
    param([string]$ModuleName)
    
    # セキュリティチェック
    if (-not (Test-SafeInput $ModuleName)) { return }
    
    $modules = Get-AllModules
    
    foreach ($cat in $modules.Keys) {
        $found = $modules[$cat] | Where-Object { $_.Name -like "*$ModuleName*" } | Select-Object -First 1
        if ($found) {
            Write-Host "`n📄 $($found.Name)" -ForegroundColor Green
            Write-Host "カテゴリ: $($Script:CategoryNames[$cat])" -ForegroundColor DarkGray
            Write-Host ("─" * 60) -ForegroundColor DarkGray
            Write-Host ""
            Get-Content -Path $found.Path -Encoding UTF8
            return
        }
    }
    
    Write-Host "エラー: モジュール `"$ModuleName`" が見つかりません" -ForegroundColor Red
}

function Search-Modules {
    param([string]$Keyword)
    
    # セキュリティチェック
    if (-not (Test-SafeInput $Keyword)) { return }
    
    $modules = Get-AllModules
    $results = @()
    
    foreach ($cat in $modules.Keys) {
        foreach ($mod in $modules[$cat]) {
            if ($mod.Name -like "*$Keyword*") {
                $results += @{ Module = $mod; Category = $cat }
                continue
            }
            
            $content = Get-Content -Path $mod.Path -Encoding UTF8 -Raw -ErrorAction SilentlyContinue
            if ($content -and $content -like "*$Keyword*") {
                $results += @{ Module = $mod; Category = $cat }
            }
        }
    }
    
    Write-Host "`n🔍 検索結果: `"$Keyword`"" -ForegroundColor Cyan
    Write-Host "$($results.Count) 件見つかりました`n" -ForegroundColor DarkGray
    
    foreach ($r in $results) {
        Write-Host "  $($Script:CategoryNames[$r.Category])" -ForegroundColor Yellow
        Write-Host "    • $($r.Module.Name)" -ForegroundColor Gray
    }
}

function Show-Tree {
    $modules = Get-AllModules
    
    Write-Host "`n🔥 Forge - ディレクトリ構造`n" -ForegroundColor Cyan
    
    $tree = @"
Forge/
├── 📄 README.md
├── 📄 The Cognitive Hypervisor Architecture.md
│
├── modules/
│   ├── find/                  ($($modules['find'].Count) files)
│   ├── think/
│   │   ├── expand/            ($($modules['expand'].Count) files)
│   │   └── focus/             ($($modules['focus'].Count) files)
│   ├── act/
│   │   ├── prepare/           ($($modules['prepare'].Count) files)
│   │   └── create/            ($($modules['create'].Count) files)
│   └── reflect/               ($($modules['reflect'].Count) files)
│
├── protocols/                 ($($modules['protocols'].Count) files)
├── knowledge/                 ($($modules['knowledge'].Count) files)
└── helpers/                   ($($modules['helpers'].Count) files)
"@
    
    Write-Host $tree
}

# ========================================
# ユーザビリティ: インタラクティブモード
# ========================================
function Start-Interactive {
    Clear-Host
    Write-Host @"

🔥 Forge - 認知ハイパーバイザー・プロンプトシステム
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

"@ -ForegroundColor Cyan

    Write-Host "ようこそ！Forgeはあなたの思考を拡張するAIプロンプトシステムです。" -ForegroundColor White
    Write-Host ""
    
    Write-Host "📌 クイックスタート" -ForegroundColor Yellow
    Write-Host "  思考プロセスを始めるには、以下のモジュールがおすすめです:"
    Write-Host ""
    
    $quickStart = @(
        @{ Num = "1"; Name = "🤯 脳内を吐き出す"; Desc = "頭の中を整理する" }
        @{ Num = "2"; Name = "❓ 問題を特定する"; Desc = "課題を明確にする" }
        @{ Num = "3"; Name = "✅ 決断を下す"; Desc = "意思決定をサポート" }
        @{ Num = "4"; Name = "📋 計画を立てる"; Desc = "アクションプランを作成" }
    )
    
    foreach ($item in $quickStart) {
        Write-Host "  [$($item.Num)] $($item.Name)" -ForegroundColor Green -NoNewline
        Write-Host " - $($item.Desc)" -ForegroundColor Gray
    }
    
    Write-Host ""
    Write-Host "  [L] モジュール一覧を見る" -ForegroundColor Cyan
    Write-Host "  [T] ディレクトリ構造を表示" -ForegroundColor Cyan
    Write-Host "  [Q] 終了" -ForegroundColor DarkGray
    Write-Host ""
    
    $choice = Read-Host "選択してください (1-4, L, T, Q)"
    
    switch ($choice.ToUpper()) {
        "1" { Show-Module -ModuleName "脳内を吐き出す" }
        "2" { Show-Module -ModuleName "問題を特定する" }
        "3" { Show-Module -ModuleName "決断を下す" }
        "4" { Show-Module -ModuleName "計画を立てる" }
        "L" { Show-List }
        "T" { Show-Tree }
        "Q" { Write-Host "`n👋 またお会いしましょう！`n" -ForegroundColor Cyan; return }
        default { 
            Write-Host "`n⚠️ 無効な選択です" -ForegroundColor Yellow
            Start-Interactive
        }
    }
}

function Show-Help {
    Write-Host @"

🔥 Forge CLI - 認知ハイパーバイザー・プロンプトシステム

使用方法:
  .\forge.ps1 <command> [options]

コマンド:
  start               インタラクティブモードを開始 (初心者向け)
  
  list [category]     モジュール一覧を表示
                      カテゴリ: find, expand, focus, prepare, create, reflect, protocols, knowledge, helpers
  
  load <module>       モジュールを読み込み表示
                      例: .\forge.ps1 load "決断を下す"
  
  search <keyword>    キーワードでモジュールを検索
                      例: .\forge.ps1 search "TDD"
  
  preset [name]       プリセット一覧/コピー (Google AI Studio用)
                      例: .\forge.ps1 preset architect
  
  tree                ディレクトリ構造を表示
  
  index               インデックスを再構築
  
  help                このヘルプを表示

例:
  .\forge.ps1 start              # 初心者はこちらから
  .\forge.ps1 list
  .\forge.ps1 list protocols
  .\forge.ps1 load "Module 04"
  .\forge.ps1 search "推論"
  .\forge.ps1 preset architect   # プリセットをクリップボードにコピー

"@ -ForegroundColor White
}

# ========================================
# プリセット機能
# ========================================
function Show-Presets {
    $presetDir = Join-Path $Script:BaseDir "presets"
    
    Write-Host "`n🎯 Forge - プリセット一覧`n" -ForegroundColor Cyan
    Write-Host "Google AI Studio の System Instructions にコピーして使用できます。`n" -ForegroundColor DarkGray
    
    $presets = @{
        "architect"  = "設計・アーキテクチャ向け (Hypervisor + TDD + DMZ)"
        "coder"      = "コーディング支援向け (TDD + Logging + Security)"
        "analyst"    = "分析・調査向け (問題特定 + 状況把握 + 比較)"
        "writer"     = "文章作成向け (ライティング原則 + 品質チェック)"
        "decision"   = "意思決定支援向け (決断 + リスク + 優先順位)"
        "brainstorm" = "アイデア出し向け (ブレスト + 逆転思考 + SCAMPER)"
    }
    
    foreach ($key in $presets.Keys) {
        Write-Host "  $key" -ForegroundColor Yellow -NoNewline
        Write-Host " - $($presets[$key])" -ForegroundColor Gray
    }
    
    Write-Host "`n使い方: .\forge.ps1 preset <name>`n" -ForegroundColor DarkGray
}

function Copy-Preset {
    param([string]$PresetName)
    
    $presetDir = Join-Path $Script:BaseDir "presets"
    $presetFile = Join-Path $presetDir "$PresetName.txt"
    
    if (-not (Test-Path $presetFile)) {
        Write-Host "エラー: プリセット '$PresetName' が見つかりません" -ForegroundColor Red
        Write-Host "利用可能なプリセット: architect, coder, analyst, writer, decision, brainstorm" -ForegroundColor DarkGray
        return
    }
    
    $content = Get-Content -Path $presetFile -Raw -Encoding UTF8
    Set-Clipboard -Value $content
    
    Write-Host "`n✅ プリセット '$PresetName' をクリップボードにコピーしました！" -ForegroundColor Green
    Write-Host "`n次のステップ:" -ForegroundColor Yellow
    Write-Host "  1. Google AI Studio を開く" -ForegroundColor Gray
    Write-Host "  2. System Instructions に貼り付け (Ctrl+V)" -ForegroundColor Gray
    Write-Host "  3. チャットを開始" -ForegroundColor Gray
    Write-Host ""
}

# ========================================
# メイン処理
# ========================================
switch ($Command.ToLower()) {
    "start" {
        Start-Interactive
    }
    "list" {
        Show-List -Category ($Arguments -join " ")
    }
    "load" {
        if (-not $Arguments) {
            Write-Host "エラー: モジュール名を指定してください" -ForegroundColor Red
            return
        }
        Show-Module -ModuleName ($Arguments -join " ")
    }
    "search" {
        if (-not $Arguments) {
            Write-Host "エラー: 検索キーワードを指定してください" -ForegroundColor Red
            return
        }
        Search-Modules -Keyword ($Arguments -join " ")
    }
    "preset" {
        if (-not $Arguments) {
            Show-Presets
        } else {
            Copy-Preset -PresetName ($Arguments[0])
        }
    }
    "tree" {
        Show-Tree
    }
    "index" {
        Update-Index
    }
    default {
        Show-Help
    }
}

