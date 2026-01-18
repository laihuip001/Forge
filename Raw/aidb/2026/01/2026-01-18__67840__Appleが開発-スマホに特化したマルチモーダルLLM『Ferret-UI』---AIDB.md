---
source_url: https://ai-data-base.com/archives/67840
captured_at: 2026-01-18T13:25:16.341Z
title: "Appleが開発 スマホに特化したマルチモーダルLLM『Ferret UI』 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:26+09:00
conversion_method: Readability+Turndown
file_hash: 0c8a3b0716f7c2f7
---

「スマホ画面上のオブジェクトを理解するのに特化した、マルチモーダル大規模言語モデルのFerret-UI」に関するAppleの研究について紹介します。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_67840-1024x576.jpg)

**参照論文情報**

*   タイトル：Ferret-UI: Grounded Mobile UI Understanding with Multimodal LLMs
*   著者：Keen You, Haotian Zhang, Eldon Schoop, Floris Weers, Amanda Swearngin, Jeffrey Nichols, Yinfei Yang, Zhe Gan
*   所属：Apple

**本記事の関連研究**：

*   [Appleが開発、スマホのスクリーンを理解してユーザーと対話できる『ReALM』端末上で動く軽量モデル](https://ai-data-base.com/archives/66828)
*   [Appleが、LLMのパラメータを「SSDなどの外部フラッシュメモリに保存し」PCで効率的にモデルを使用する手法を開発](https://ai-data-base.com/archives/61006)　
*   [マルチモーダルLLMに心の目を与える『Visualization-of-Thought』プロンプティングが空間推論タスク性能を向上させる](https://ai-data-base.com/archives/67128)
*   [マルチモーダルLLMの技術や開発トレンド、26種類のモデル例を網羅的にまとめた報告](https://ai-data-base.com/archives/63257)

iPhoneやAndroidなどのスマートフォンの普及に伴い、人間は多くの時間を、スマホのUI画面を見ることに費やしています。

それと同時に、GPT-4VやDALL-E 3などの、画像分野に特化したマルチモーダル大規模言語モデル（MLLM）の発展は、目覚ましいものがあります。現在のMLLMの性能にとっては、「写真に写っているものを、文章で答える」などのタスクは容易いです。

しかし、そうしたスマホの普及とMLLMの性能向上に反して、「スマホ画面の理解に特化したMLLM」という限定した分野の研究については、それほど行われてきていません。

また、スマホUIとマルチモーダルに関する先行研究においても、スマホ画面に特化した処理は行われておらず、複雑なタスクにおいて困難が生じます。

以下のような要因があります。

*   スマホ特有の縦長画面のアスペクト比が、一般画像と異なる
*   スマホ内のアイコンなどのオブジェクトが小さく、認識が難しい

しかし本研究で提案されている技術を使用すると、例えば、以下のような「ウィジェットの分類」や「アイコンの認識」、「スマホのUI画面に関するLLMとの会話」といったタスクも遂行可能です。高度なスマホ操作の補助など、様々な応用が期待できます。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.