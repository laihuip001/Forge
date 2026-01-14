---
module_id: M-31
name: Checkpoint
description: 長時間セッションでの状態記録
tier: L0
---

# M-31: Checkpoint (チェックポイント)

## 目的

長時間セッション（50ターン超）でコンテキストが失われるリスクを軽減する。

## 発動条件

- セッションが **50ターンを超えた**場合
- 複雑なタスクで**複数のモジュールやディレクトリ**を参照している場合

## 記録内容

Artifact に以下を記録：

```markdown
## Checkpoint (Turn XX)

### 参照中のファイル
- `path/to/file1.md`
- `path/to/file2.md`

### 参照中のモジュール
- M-01, M-07, ...

### 現在のタスク状態
- 完了: ...
- 進行中: ...
- 未着手: ...
```

## 保存先

`brain/<conversation-id>/checkpoint.md`
