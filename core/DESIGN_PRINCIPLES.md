---
doc_id: "FORGE_DESIGN_PRINCIPLES"
version: "1.0.0"
tier: "PROJECT"
created: "2026-01-14"
---

# Forge プロンプト設計原則

> **目的**: プロンプトエンジニアリングにおける設計判断の指針を定め、全チャットで一貫した意思決定を可能にする。

---

## 1. 品質至高主義 (Quality First)

- **トークン量は度外視**: 性能と品質を最優先。コスト最適化は完成後に行う。
- **軍事級 (Military-Grade)**: 曖昧さゼロ、決定論的ルーティング、多層防御を目指す。

---

## 1.5 Tier 定義 (Module Priority Hierarchy)

モジュールの優先順位と責務範囲を定義する。上位Tierは下位Tierに優先する。

| Tier | 名称 | 責務 | モジュール例 |
| :--- | :--- | :--- | :--- |
| **L0** | Constitution | 不可侵ルール、絶対優先 | M1_KERNEL |
| **L1** | User Context | ユーザープロファイル、動的設定 | M0_USER_PROFILE |
| **L2** | Knowledge | 技術知識ベース、参照データ | M2_PE_ENGINE |
| **L3** | Execution | ワークフロー、出力制御 | M3_FLOW, M4_VOICE |
| **U1** | Utility | ユーザー向けインターフェース | M5_INTERFACE |

**優先順位**: L0 > L1 > L2 > L3 > U1

**競合解決ルール**:

- L0の禁止事項はL1以下で上書き不可
- L1のユーザー設定はL2以下の動作を調整可能
- U1はL3の出力をフォーマットするが、L0-L2には影響しない

---

## 2. モジュール化 vs 一枚岩: フェーズ別運用

| フェーズ | 構造 | 理由 |
|---|---|---|
| **開発中** | **モジュール化** | 柔軟性重視、頻繁な更新に対応、デバッグ容易 |
| **完成後** | **統合 + 軽量化** | アテンション効率最適化、XMLタグ削減 |

### 技術的根拠

1. **終了タグ問題**: `</module>` はアテンションのリセットポイントとして機能し、モジュール間の情報参照が弱くなる可能性がある。
2. **情報距離問題**: 重要な情報が離れすぎると性能が低下する。
3. **Prompt Caching**: 静的モジュールはキャッシュ可能、動的部分だけ更新すればキャッシュ効率が上がる。

### 開発中の構造テンプレート

```xml
<system_instruction>
  <!-- 静的モジュール：キャッシュ対象 -->
  <module name="KERNEL">...</module>
  <module name="PE_ENGINE">...</module>
  
  <!-- 動的モジュール：頻繁に更新 -->
  <module name="USER_PROFILE" status="DRAFT">
    <!-- たたき台を配置 -->
  </module>
</system_instruction>
```

### 完成後の構造テンプレート

```xml
<system_instruction>
  <constitution>
    <!-- 全ルールを1つのセクションに統合 -->
  </constitution>
  <user_profile>
    <!-- 完成版 User Manual 全文埋め込み -->
  </user_profile>
  <execution>
    <!-- PE_ENGINE + FLOW + VOICE を統合 -->
  </execution>
</system_instruction>
```

---

## 3. 多層防御アーキテクチャ (Defense in Depth)

| Layer | 機能 | 実装 |
|---|---|---|
| **L0: Constitution** | 絶対不可侵のルール | `<forbidden>` タグ、違反時は即時停止 |
| **L1: Pre-Processing** | 入力検証 | 曖昧入力検知 → 強制質問生成 |
| **L2: Processing** | 推論エンジン選択 | Engine Registry + Routing Logic |
| **L3: Post-Processing** | 出力検証 | Metacognitive Hypervisor |
| **L4: QA Gate** | 品質ゲート | Red Team + Pre-Mortem 必須通過 |

---

## 4. 決定論的ルーティング (Deterministic Routing)

「なんとなく良さそう」を排除。**IF-THEN-ELSE** で明示的にエンジン/モードを選択。

```
IF Task.contains("設計" OR "アーキテクチャ"):
  → ACTIVATE DeepThought (高推論)
ELSE IF Task.contains("コード" OR "変換"):
  → ACTIVATE CodeAct (実行重視)
ELSE:
  → ACTIVATE SelfDiscover + 強制質問
```

---

## 5. QA Gate: 出力前必須チェック

すべて通過しなければ出力させない:

1. **Thinking Pattern Detection**: 思考パターンの欠陥検知
2. **Language Check**: 日本語出力か？
3. **Red Team**: 自分の結論に対する最強の反論3つ
4. **Pre-Mortem**: 「失敗するとしたら何が原因か？」

---

## 6. User Manual の位置づけ

- **現状**: たたき台（Draft）として扱う
- **方針**: 完成までは `status="DRAFT"` を明示し、頻繁な更新を前提とする
- **完成後**: 全文埋め込み（58KB+）で性能最適化

---

## 参照ドキュメント

- [GEMINI.md](file:///c:/Users/user/Documents/Github/forge/GEMINI.md) - Forge憲法
- [PE Component Library](file:///C:/Users/user/Documents/mine/AI用ナレッジベース/Prompt%20Engineering%20Component%20Library.md) - 技術カタログ
- [Claude XML Semantics](file:///C:/Users/user/Documents/mine/AI用ナレッジベース/claude-xml-semantics-2026.md) - XMLタグの意味論
- [Prompt Development Workflow](file:///c:/Users/user/Documents/Github/forge/.agent/workflows/prompt-development.md) - 軍事級プロンプト開発ワークフロー

---

## 7. メタプロンプトエディターとしての役割

このIDEは単なるコーディング支援ではなく、**軍事級プロンプトを製作するメタプロンプトエディター**である。

**開発フローはシステム開発ライフサイクル（SDLC）を転用:**

| Phase | 名称 | 内容 |
|---|---|---|
| 0 | Intake | 依頼受付、初期情報整理 |
| 1 | Requirements | ヒアリング、Gap分析、ドメイン知識収集 |
| 2 | Design | モジュール選択、構造設計、リスク評価 |
| 3 | Implementation | ドラフト作成、自己レビュー |
| 4 | QA | Red Team、Pre-Mortem、テスト、ユーザーレビュー |
| 5 | Deploy | 最終化、エクスポート、アーカイブ |
| 6 | Maintenance | フィードバック収集、反復改善 |

**詳細**: `.agent/workflows/prompt-development.md` を参照

---

**Status:** v1.1.0 (2026-01-14)
