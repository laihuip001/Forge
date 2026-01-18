---
source_url: https://ai-data-base.com/archives/61484
captured_at: 2026-01-18T13:33:18.794Z
title: "視覚・テキスト・音声そして行動データを処理するマルチモーダルLLM「Unified-IO 2」を開発したと報告されています。 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2023-12-29T22:45:03+09:00
conversion_method: Readability+Turndown
file_hash: 2ba65bd9936a532d
---

「Unified-IO 2」と名付けられた、視覚、テキスト、音声、そして行動データを統合処理するマルチモーダルな大規模言語モデル（LLM）の開発が発表されました。

35以上のベンチマークで、多様なタスクにおける強力な性能が検証されているとのことです。

“**Unified-IO 2: Scaling Autoregressive Multimodal Models with Vision Language Audio and Action**“より

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61484.jpg)

## 関連研究

[「視覚は本来、言語に依存しない」と考えた研究者らが、言語データなしで大規模ビジョンモデル（LVM）を構築するアプローチを開発](https://ai-data-base.com/archives/60337)

[Gemini vs GPT-4V、画像認識能力でどちらが優秀なのか](https://ai-data-base.com/archives/61286)

[Googleが「人間の専門家レベルを超える最初のモデル」とする『Gemini』発表、GPT-4を凌駕](https://ai-data-base.com/archives/60035)

[Metaのリアルタイム多言語間翻訳システム『Seamless（シームレス）』は話し方のトーンや抑揚も反映](https://ai-data-base.com/archives/59952)

※本記事は[AIDBのXポスト](https://twitter.com/ai_database/status/1740726497814691875)を転載したものです。

※研究の概要を手早く把握するためのカジュアルな紹介記事です。

## 研究に至る背景

1.  既存モデルは多様な形式のデータを一度に扱わない
2.  単一モデルで処理すると広い応用が見える
3.  行動データの取り扱いにも可能性がある

1.  単一のTransformerが様々な入出力タイプに対応
2.  120以上のデータセットで事前学習
3.  視覚、テキスト、音声、行動データを処理する

## 実験内容

1.  さまざまな指示でタスクを実行させた
2.  異なるモダリティを合わせて解析させた
3.  35以上のベンチマークで性能を評価した

## 実験結果

1.  以下のようなタスクで高い性能を発揮

*   画像生成・理解
*   自然言語理解
*   ビデオ・オーディオ理解

1.  物理的な行動タスクでも有効性を実証

研究者らは今後の展望として、さらに新しいモダリティを追加していきたいと述べています。  
また、データの偏りや計算コストには注意していきたいとのことです。

## 参照情報

Unified-IO 2: Scaling Autoregressive Multimodal Models with Vision, Language, Audio, and Action  
[https://arxiv.org/abs/2312.17172](https://arxiv.org/abs/2312.17172)  
著者：Jiasen Lu, Christopher Clark, Sangho Lee, Zichen Zhang, Savya Khosla, Ryan Marten, Derek Hoiem, Aniruddha Kembhavi  
機関：Allen Institute for AI, University of Illinois Urbana-Champaign, University of Washington  
プロジェクトページ：[https://unified-io-2.allenai.org](https://unified-io-2.allenai.org/)  
コード：[https://github.com/allenai/unified-io-2](https://github.com/allenai/unified-io-2)

Copyright © Parks, Inc. All rights reserved.