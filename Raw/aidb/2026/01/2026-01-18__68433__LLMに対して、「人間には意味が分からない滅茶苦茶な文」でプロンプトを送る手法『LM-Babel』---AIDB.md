---
source_url: https://ai-data-base.com/archives/68433
captured_at: 2026-01-18T13:25:43.853Z
title: "LLMに対して、「人間には意味が分からない滅茶苦茶な文」でプロンプトを送る手法『LM Babel』 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:24+09:00
conversion_method: Readability+Turndown
file_hash: 343d61f743906c19
---

LLMは人間の言葉を理解し、自然な対話ができるまでに能力が向上してきました。人間の言葉がわかるだけでなく、LLMにしか理解できない言葉というのも存在するのでしょうか？今回AWSとStanford大学の研究者らは、人間にはまるでデタラメに見える文字列を使ってモデルを操作する方法を検証しました。

![](https://ai-data-base.com/wp-content/uploads/2024/05/AIDB_-68433-1024x576.jpg)

**参照論文情報**

*   タイトル：Talking Nonsense: Probing Large Language Models’ Understanding of Adversarial Gibberish Inputs
*   著者：Valeriia Cherepanova, James Zou
*   所属：AWS, Stanford University

**本記事の関連研究**：

*   [LLMが思考のネットワークを構築し、人間の推論プロセスを模倣する『THOUGHTSCULPT』プロンプティング](https://ai-data-base.com/archives/67755)
*   [Microsoftなどのプロンプト圧縮技術『LLMLingua-“2″』タスクの精度を維持したまま圧縮率2-5倍](https://ai-data-base.com/archives/66170)
*   [LLMが「自然言語で記述されたアルゴリズムを実行する」能力で非常に高い性能を示す](https://ai-data-base.com/archives/65949)
*   [LLMの記号推論タスク（化学式や絵文字の理解など）で記号を自然言語に変換することの有効性を確認](https://ai-data-base.com/archives/65784)
*   [「ポジティブ思考」プロンプトでLLMの性能向上　さらに自動最適化プロンプトが上をいくが、奇妙な現象も](https://ai-data-base.com/archives/65164)

## 背景

「LLMは、人間にとって理解できない言葉で話しかけられても、理解できるのか？」

そんな疑問を抱いた研究者らは、LLMに意味不明な入力を与えたときの振る舞いを調べ、その根底にあるメカニズムを解明しようとしています。グリーディ座標勾配最適化（最適なプロンプトを自動的に探索するアルゴリズム）を用いて、一見するとでたらめな文字列なのにLLMに一貫した応答をさせるプロンプトを作り出しました。

本手法は「LM Babel」と名付けられ、LM Babelに操作されたLLMの振る舞いが体系的に調べられました。この研究は、LLMと対話するための新しい言語について理解を深めるもので、LLMの内部動作を解明する上で重要な知見が得られています。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.