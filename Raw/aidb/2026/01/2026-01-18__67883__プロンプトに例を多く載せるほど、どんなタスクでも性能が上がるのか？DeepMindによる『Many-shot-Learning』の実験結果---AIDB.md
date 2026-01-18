---
source_url: https://ai-data-base.com/archives/67883
captured_at: 2026-01-18T13:25:24.311Z
title: "プロンプトに例を多く載せるほど、どんなタスクでも性能が上がるのか？DeepMindによる『Many-shot Learning』の実験結果 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:25+09:00
conversion_method: Readability+Turndown
file_hash: 7fed1c7c19ab55b3
---

プロンプトに例示を含めることにより新しいタスクを学習させられる「コンテキスト内学習（In-context Learning、ICL）」が注目を集めています。

これまでの研究は数ショットで行われてきましたが、今回Googleの研究者らは、「多ショット学習（Many-shot Learning）」の可能性を探っています。最新のLLMの長いコンテキストウィンドウを活用し、数百から数千もの例を用いた実験を行ったのです。

多様なタスクにおける性能向上や、人間のデータに依存しない新しい学習法など、多ショットの効果と特性が詳細に分析されました。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_67883-1024x576.jpg)

**参照論文情報**

*   タイトル：Many-Shot In-Context Learning
*   著者：Rishabh Agarwal, Avi Singh, Lei M. Zhang, Bernd Bohnet, Stephanie Chan, Ankesh Anand, Zaheer Abbas, Azade Nova, John D. Co-Reyes, Eric Chu, Feryal Behbahani, Aleksandra Faust, Hugo Larochelle
*   所属：Google DeepMind

**本記事の関連研究**：

*   [LLMの思考の流れに沿ってプロンプトを与えるか否かで30%以上精度が変化する　DeepMindが報告](https://ai-data-base.com/archives/64551)
*   [CoTの推論ステップ数がLLMの推論能力に及ぼす影響を詳細に検証した結果](https://ai-data-base.com/archives/62364)
*   [LLMに敢えて間違わせてルールを覚えさせるプロンプト手法　Google DeepMindなどが考案](https://ai-data-base.com/archives/64057)
*   [GPT-4やGeminiなどさまざまなLLMで、プロンプトの入力が長くなるにつれて推論性能に顕著な低下が見られる](https://ai-data-base.com/archives/64873)

## 背景

LLMのコンテキスト内学習においては、プロンプトで提供されるわずか数例から新しいタスクを学習することができると示されています。パラメータの更新は一切必要ないため、非常に便利な特性です。

しかし数ショット（数個の例）で効果が出ている一方、多ショットだとどうなるのか？Googleの研究者らはそう疑問を持ちました。これまで多ショットの研究はほとんどされてきていません。

最近LLMの文脈ウィンドウ（LLMが一度に処理できるトークン化された入力の量）が拡大してきたため、数百から数千もの例を用いた実験が可能です。例えば2024年2月にリリースされたGemini 1.5 Proでは、文脈長が100万トークンにまで拡大しました。  
うまくいけば多ショットによってLLMがより多様なタスクに適応でき、有用性が増すのかもしれません。

研究者らは、プロンプトにおける例示の数を増やすことが、LLMの性能にどのような影響を与えるかを体系的に評価しました。

タスクとしては、機械翻訳、要約、計画、報酬モデリング、数学的問題解決、科学的質問応答、アルゴリズム的推論など、多様な種類が試されました。

さらに、人間が例を用意する代わりにモデルが例を生成する挑戦的な実験も行われました。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.