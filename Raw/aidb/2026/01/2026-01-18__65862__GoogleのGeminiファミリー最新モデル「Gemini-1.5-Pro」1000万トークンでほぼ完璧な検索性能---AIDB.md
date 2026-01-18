---
source_url: https://ai-data-base.com/archives/65862
captured_at: 2026-01-18T13:24:21.689Z
title: "GoogleのGeminiファミリー最新モデル「Gemini 1.5 Pro」1000万トークンでほぼ完璧な検索性能 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:31+09:00
conversion_method: Readability+Turndown
file_hash: a11b046e97906a51
---

Googleが公開した最新モデルGemini 1.5 Proは、長いコンテキストから細かい情報を探索して推論できる高効率なマルチモーダルモデルです。テクニカルレポートによると、最大1000万トークンまでのコンテキスト検索タスクでほぼ完璧な再現率を達成するとのことです。また、ロングコンテキストQA、長い動画QA、ロングコンテキストASR（自動音声認識）で最先端の性能を示しています。  
さらに、200人未満の話者しかいないKalamang語を学習し、優れた品質で英語から翻訳可能とのこと。

![](https://ai-data-base.com/wp-content/uploads/2024/03/AIDB_-65862-1024x576.jpg)

**参照テクニカルレポート情報**

*   タイトル：Gemini 1.5: Unlocking multimodal understanding across millions of tokens of context
*   URL：[https://storage.googleapis.com/deepmind-media/gemini/gemini\_v1\_5\_report.pdf](https://storage.googleapis.com/deepmind-media/gemini/gemini_v1_5_report.pdf)
*   公式ブログ：[https://blog.google/technology/ai/google-gemini-next-generation-model-february-2024/](https://blog.google/technology/ai/google-gemini-next-generation-model-february-2024/)
*   著者：Gemini Team, Google（著者多数）

**本記事の関連研究**：

*   [Googleが「人間の専門家レベルを超える最初のモデル」とする『Gemini』発表、GPT-4を凌駕](https://ai-data-base.com/archives/60035)
*   [Geminiの高い推論能力を活かして、過去最高水準のプログラミングAI『AlphaCode 2』も誕生したとの報告](https://ai-data-base.com/archives/60201)
*   [Gemini Pro 対 GPT-4V、画像認識能力でどちらが優秀なのか](https://ai-data-base.com/archives/61286)
*   [Geminiの「常識を推論する能力」を網羅的に調査した結果　間違えやすいタイプの問題も明らかに](https://ai-data-base.com/archives/61597)
*   [AGIを見据えて専門家レベルの問題を集めたベンチマーク「MMMU」、GPT-4VやGemini Ultraでも正解率6割未満](https://ai-data-base.com/archives/61463)
*   [マルチモーダルLLMの技術やトレンド、26種類のモデル例を網羅的にまとめた報告](https://ai-data-base.com/archives/63257)

## はじめに

Googleの研究者らは以前からマルチモーダルモデルファミリーGeminiを公開しています。今回新たにリリースしたGemini 1.5 Proは、複数の長文書、数時間の動画、ほぼ5日分の音声を含む長いマルチモーダル入力の処理が可能になったと述べられています。

下記は、Gemini 1.5 Proがさまざまなモダリティ（テキスト、ビデオ、オーディオ）で、最大1000万トークンの「藁」の中で99.7％以上の「針」の再現率を達成したことを示す図です。

![](https://ai-data-base.com/wp-content/uploads/2024/03/AIDB_-65862_1-1024x656.png)

さらに従来のマルチモーダル能力と比較したところ、ほとんどのベンチマークでGemini 1.0 Proより優れた性能を発揮したとのことです。最先端のGemini 1.0 Ultraと比較しても、訓練計算量が大幅に少なく効率が高いにもかかわらず、ベンチマークの半数以上でより良い性能を示しています。

![](https://ai-data-base.com/wp-content/uploads/2024/03/AIDB_-65862_2-1024x380.png)

下記でその能力をさらに詳しく紹介します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.