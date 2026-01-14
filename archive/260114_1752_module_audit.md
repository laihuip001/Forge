# モジュール構成監査レポート

**監査日**: 2026-01-14
**対象**: M1_KERNEL, M2_PE_ENGINE, M3_FLOW, M4_VOICE, M5_INTERFACE
**監査フレームワーク**: Devil's Advocate (M-07) + Pre-Mortem Analysis

---

## 監査サマリー

| 視点 | スコア | 判定 |
|---|---|---|
| **論理整合性** | 78/100 | CONDITIONAL_PASS |
| **UX/実用性** | 72/100 | CONDITIONAL_PASS |
| **セキュリティ/堅牢性** | 85/100 | PASS |

**総合判定**: CONDITIONAL_PASS（修正推奨事項あり）

---

## 視点1: 論理整合性監査

### 検出された欠陥

#### 1.1 モジュール間参照の曖昧性 [Severity: Medium]

**問題**: M3_FLOW の Engine Selection で `[M0_USER_PROFILE]` を参照するが、M0 モジュールは存在せず、M1_KERNEL 内の `<error_handling>` でも `[USER_PROFILE]` を参照している。

| モジュール | 参照 | 実態 |
|---|---|---|
| M1_KERNEL | `[USER_PROFILE]` | 未定義（M0が存在しない） |
| M3_FLOW | `USER_PROFILE` | 同上 |
| FORGE_SYSTEM_PROMPT | `M0_USER_PROFILE` | Draftとして定義あり |

**影響**: モジュールのローディング順序が不明確。USER_PROFILEがない場合の挙動が未定義。

**推奨アクション**:

- M0_USER_PROFILE を独立モジュールとして `core/modules/system/M0_USER_PROFILE.md` に作成
- 各モジュールの参照を `[M0_USER_PROFILE]` に統一

---

#### 1.2 Tier 定義の一貫性欠如 [Severity: Low]

**問題**: Tier の定義が暗黙的。L0, L2, L3, U1 の意味と優先順位が文書化されていない。

| モジュール | Tier | 推測される意味 |
|---|---|---|
| M1_KERNEL | L0 | 不可侵ルール |
| M2_PE_ENGINE | L2 | 技術知識 |
| M3_FLOW | L3 | ワークフロー |
| M4_VOICE | L3 | 出力スタイル |
| M5_INTERFACE | U1 | ユーティリティ |

**推奨アクション**:

- `DESIGN_PRINCIPLES.md` に Tier 定義セクションを追加

---

#### 1.3 QA Gate の重複定義 [Severity: Low]

**問題**: QA Gate が M3_FLOW の Phase 4 と `process_enforcement` で二重に定義されている。

**影響**: 実行時にどちらが優先されるか不明確。

**推奨アクション**:

- `process_enforcement` は QA Gate の補足として位置づけを明確化

---

## 視点2: UX/実用性監査

### 検出された欠陥

#### 2.1 Hotkey 数の過多 [Severity: Medium]

**問題**: M5_INTERFACE で定義された Hotkey が 13 種類。認知負荷が高い。

| カテゴリ | Hotkey数 |
|---|---|
| Mode Control | 3 |
| Reasoning Control | 4 |
| Output Control | 3 |
| Format Conversion | 3 |

**影響**: ユーザー（AuDHD特性: ワーキングメモリの脆弱性）にとって過負荷の可能性。

**推奨アクション**:

- 必須 Hotkey を 5〜7 に絞り、残りは「拡張コマンド」として分離
- Hotkey チートシートを作成

---

#### 2.2 Mode A/B の判定基準の曖昧性 [Severity: Medium]

**問題**: M3_FLOW の Mode Selection で「コード生成」「抽象的な相談」の境界が曖昧。

**例**: 「プロンプトを作って」は Mode A（生成）か Mode B（設計相談）か？

**推奨アクション**:

- Mode 選択を明示的にユーザーに確認させるステップを追加
- または、Hotkey `[!]` で Mode A を強制するパターンを文書化

---

#### 2.3 Boot Sequence の必要性 [Severity: Low]

**問題**: 毎回 `SYSTEM ONLINE: Forge v1.0...` を出力するのは冗長。

**影響**: ユーザーが「早く本題に入りたい」時にノイズになる。

**推奨アクション**:

- Boot Message を初回のみ表示、または `[Boot]` Hotkey で手動呼び出しに変更

---

## 視点3: セキュリティ/堅牢性監査

### 検出された欠陥

#### 3.1 HALT/ROLLBACK の実行保証なし [Severity: Medium]

**問題**: M5_INTERFACE の Emergency Protocols は「トリガー」と「アクション」を定義しているが、IDE 側の実装に依存。

**影響**: LLMが生成途中で停止できる保証がない（システム制約）。

**推奨アクション**:

- Emergency Protocols の限界を文書化
- 「ベストエフォート」であることを明記

---

#### 3.2 Forbidden リストの網羅性 [Severity: Low]

**問題**: M1_KERNEL の `<forbidden>` は6項目だが、GEMINI.md では追加の禁止事項がある。

| M1_KERNEL | GEMINI.md |
|---|---|
| 非日本語出力 | ✓ |
| 曖昧な質問 | ✓ |
| 情緒的共感 | ✓ |
| 道徳的説教 | ✓ |
| 根拠なき断定 | ✓ |
| 冗長な前置き | ✓ |
| — | `config.json` 上書き禁止 |
| — | API Key ログ出力禁止 |
| — | `rm -rf` without confirmation |

**推奨アクション**:

- `<constitution>` の Law "Guard" に含まれているため、重複ではないが、`<forbidden>` との関係を明確化

---

#### 3.3 Confidence Calibration の検証不可性 [Severity: Low]

**問題**: M4_VOICE の Confidence Calibration は定義されているが、LLM が自己評価する確信度は検証不可能。

**影響**: ユーザーが過信する可能性。

**推奨アクション**:

- 確信度に「(自己申告)」などの注釈を追加するルールを検討

---

## 推奨アクション優先度

| 優先度 | アクション | 対象 |
|---|---|---|
| **高** | M0_USER_PROFILE を独立モジュールとして作成 | 1.1 |
| **高** | Hotkey を 5〜7 に絞り込み | 2.1 |
| **中** | Tier 定義を DESIGN_PRINCIPLES.md に追加 | 1.2 |
| **中** | Mode 選択の明確化 | 2.2 |
| **低** | Boot Sequence を初回のみに変更 | 2.3 |
| **低** | Emergency Protocols の限界を文書化 | 3.1 |

---

## 結論

**全体評価**: 軍事級の基盤構造は健全。ただし、モジュール間参照の一貫性と UX 面での改善余地あり。

**次のステップ**:

1. M0_USER_PROFILE モジュールの作成
2. Hotkey のプライオリティ整理
3. Tier 定義の文書化

---

**監査完了**: 2026-01-14 17:15
**監査担当**: Jules (Devil's Advocate Mode)
