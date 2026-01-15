# TODO: Forge をシンボリックリンク方式に移行

> **ステータス**: 保留（実家PC作業時に実行）
> **作成日**: 2026-01-15
> **優先度**: 中

## 背景
現在、ForgeはObsidian Vault内 (`mine/03_📚_知識｜Knowledge/Forge`) に配置されているが、
設計意図は**独立したGitHubリポジトリ**としてVault外に置き、シンボリックリンクで参照する構成。

## 実行手順

### 1. Forgeを元の場所に移動
```powershell
Move-Item -Path "C:\Users\user\Documents\mine\03_📚_知識｜Knowledge\Forge" -Destination "C:\Users\user\.gemini\Forge"
```

### 2. シンボリックリンク作成 (管理者として実行)
```powershell
New-Item -ItemType SymbolicLink -Path "C:\Users\user\Documents\mine\03_📚_知識｜Knowledge\Forge" -Target "C:\Users\user\.gemini\Forge"
```

### 3. 確認
- Obsidianでリンクが正常に表示されること
- `forge.ps1` が動作すること

## 完了条件
- [ ] Forge が `C:\Users\user\.gemini\Forge` に存在
- [ ] Vault内にシンボリックリンクが作成されている
- [ ] 両方からアクセス可能
