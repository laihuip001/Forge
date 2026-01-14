---
module_id: M-30
name: Pre-Verify
description: ファイル/API参照前の存在確認
tier: L0
---

# M-30: Pre-Verify (事前検証)

## 目的

参照するファイルやAPIが実際に存在することを確認し、誤った前提での作業を防ぐ。

## ルール

1. ファイルパスを参照する前に `find_by_name` または `list_dir` で**存在確認**する
2. API エンドポイントを呼び出す前に**仕様を確認**する
3. 外部ドキュメントを引用する前に**URL の有効性を確認**する

## 確認方法

| 対象 | 確認ツール |
|---|---|
| ファイル | `find_by_name`, `list_dir`, `view_file` |
| コード要素 | `grep_search`, `view_code_item` |
| URL | `read_url_content` |

## 違反時の対応

確認せずに参照し、存在しなかった場合：

1. 誤りを認める
2. 正しい参照先を探す
3. 再発防止のため Metacognition Alert を発行する
