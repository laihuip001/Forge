---
description: 軍事級プロンプト開発ワークフロー（システム開発転用）
---

# Prompt Development Workflow (SDLC-Based)

> **目的**: システム開発ライフサイクル（SDLC）を転用した、軍事級プロンプトの開発フロー。
> **対象**: Forge IDE で作成する全てのシステムプロンプト。

---

## Phase 0: Intake（受付）

**Trigger:** ユーザーが新規プロンプト作成を依頼

**Action:**

1. 依頼内容を受領
2. 以下のテンプレートで初期情報を整理:
   - **目的**: このプロンプトで何を達成したいか
   - **ターゲットモデル**: Gemini / Claude / GPT / Other
   - **ユースケース**: どのような場面で使うか
   - **成功基準**: 何が出力されれば成功か

**Output:** `intake_summary.md`

---

## Phase 1: Requirements Definition（要件定義）

**Trigger:** Intake完了

**Action:**

1. **ヒアリング (Structured Interview):**
   - ユーザーの明示的要望を整理
   - 暗黙の期待を仮説として提示 (A/B形式)
   - 禁止事項・制約条件を明確化

2. **Gap Analysis（不足情報の特定）:**
   - 要件に対し、不足している情報をリストアップ
   - 各項目に「誰が」「どうやって」収集するか決定:
     - **User**: ユーザー自身が提供
     - **Jules (IDE)**: このIDEが調査
     - **DeepResearch**: Gemini等のディープリサーチで収集

3. **Domain Knowledge Acquisition（ドメイン知識収集）:**
   - 必要ならナレッジベース（`AI用ナレッジベース`）を参照
   - 外部検索（Google Search Grounding）を実行
   - 収集した情報を `research_notes.md` に記録

**Output:** `requirements.md`

---

## Phase 2: Architecture Design（設計）

**Trigger:** 要件定義完了

**Action:**

1. **Module Selection（モジュール選択）:**
   - PE_ENGINE から使用する技術を選定
     - 例: CoT, Self-Reflection, XML-Structuring
   - 選定理由を記録

2. **Structure Design（構造設計）:**
   - プロンプトの骨格（XML/Markdown）を決定
   - 変数（`{{VARIABLE}}`）を特定
   - モジュール構成を設計:
     - `<meta>`: メタ情報
     - `<role>`: ペルソナ
     - `<instructions>`: 指示
     - `<constraints>`: 制約
     - `<output>`: 出力フォーマット

3. **Risk Assessment（リスク評価）:**
   - 想定される失敗パターンを列挙
   - 各リスクへの対策を設計に組み込む

**Output:** `design_spec.md`

---

## Phase 3: Implementation（実装）

**Trigger:** 設計承認

**Action:**

1. **Draft Generation（ドラフト作成）:**
   - 設計に基づきプロンプト本体を記述
   - XML構造を適用
   - 変数テーブルを作成

2. **Self-Review（自己レビュー）:**
   - Metacognitive Hypervisor によるパターン検知
   - 言語チェック（日本語出力か）
   - Noise Filter 適用

**Output:** `prompt_draft_v0.1.md`

---

## Phase 4: Quality Assurance（品質検証）

**Trigger:** ドラフト完成

**Action:**

1. **Red Team Analysis:**
   - 自分のドラフトに対し最強の反論を3つ生成
   - 各反論への対策を検討

2. **Pre-Mortem:**
   - 「このプロンプトが失敗するとしたら、何が原因か？」
   - 単一のボトルネックを特定し、対策を実装

3. **Test Case Generation:**
   - Happy Path（正常系）
   - Edge Case（境界ケース）
   - Stress Test（負荷テスト）
   の3シナリオでテスト

4. **User Review:**
   - ユーザーにドラフトを提示
   - フィードバックを収集

**Output:** `qa_report.md`, `prompt_v1.0.md`

---

## Phase 5: Deployment（リリース）

**Trigger:** QA通過 + ユーザー承認

**Action:**

1. **Finalization:**
   - 全ての `{{VARIABLE}}` を解決
   - 最終バージョンを生成

2. **Export:**
   - `[C]` To Claude: Claude用XMLに変換
   - `[G]` To GPT: ChatGPT用Markdownに変換
   - コピペ可能な形式で出力

3. **Archive:**
   - `archive/{YYMMDD}_{HHMM}_{slug}.md` に保存
   - バージョン管理

**Output:** Final Prompt (Copy-Paste Ready)

---

## Phase 6: Maintenance（保守）

**Trigger:** 運用中のフィードバック

**Action:**

1. **Feedback Collection:**
   - 実際の使用結果を収集
   - 期待と現実の乖離を分析

2. **Iteration:**
   - Phase 1 に戻り改善サイクル
   - バージョンをインクリメント

---

## Hotkeys for This Workflow

| Phase | Hotkey | Action |
|---|---|---|
| Intake | `[New]` | 新規プロンプト開発を開始 |
| Requirements | `[Req]` | 要件定義フェーズに移行 |
| Design | `[Design]` | 設計フェーズに移行 |
| Implementation | `[Impl]` | 実装フェーズに移行 |
| QA | `[QA]` | 品質検証フェーズに移行 |
| Deploy | `[F]` | 最終出力を生成 |
| Archive | `/archive` | アーカイブに保存 |

---

## Artifacts Generated Per Phase

| Phase | Artifact | Location |
|---|---|---|
| 0 | `intake_summary.md` | `.gemini/brain/{session}/` |
| 1 | `requirements.md` | `.gemini/brain/{session}/` |
| 2 | `design_spec.md` | `.gemini/brain/{session}/` |
| 3 | `prompt_draft_v*.md` | `.gemini/brain/{session}/` |
| 4 | `qa_report.md` | `.gemini/brain/{session}/` |
| 5 | Final Prompt | `library/` or user-specified |
| 6 | Changelog | `archive/` |

---

**Status:** v1.0.0 (2026-01-14)
