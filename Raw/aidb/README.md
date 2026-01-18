# AIDB収集データ

## 目的
AI関連論文の2次資料（ai-data-base.com）を収集し、Forge用KB化の練習台とする。

## 保存ルール

| 項目 | ルール |
|------|--------|
| ファイル名 | `YYYY-MM-DD__slug__title.md` |
| 保存場所 | `Raw/aidb/YYYY/MM/` |
| Git管理 | メタデータ（`_index/`）のみ |
| ローカル | 全文MD（著作権配慮で除外） |

## Frontmatter必須項目
- `source_url`
- `captured_at`
- `title`
- `category`
- `is_premium`
- `conversion_method`

## 変換優先順位
1. Readability + Turndown（本文抽出）
2. Turndown（全HTML変換）
3. HTMLバックアップ（最終手段）

## ⚠️ 注意
全文MDはローカルのみ（.gitignore除外）。GitHubにはメタデータのみコミット。
