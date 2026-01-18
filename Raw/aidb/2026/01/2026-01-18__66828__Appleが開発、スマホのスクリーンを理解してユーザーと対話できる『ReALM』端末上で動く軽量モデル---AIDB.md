---
source_url: https://ai-data-base.com/archives/66828
captured_at: 2026-01-18T13:24:53.709Z
title: "Appleが開発、スマホのスクリーンを理解してユーザーと対話できる『ReALM』端末上で動く軽量モデル - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:28+09:00
conversion_method: Readability+Turndown
file_hash: 57b1bdf141e43fe6
---

スマホアプリなどで自然に会話するアシスタントを実装するための言語モデル技術をAppleが研究しています。

今回研究者らが開発したモデルは、スクリーン上の情報を理解するタスクをGPT-4以上の性能で実行でき、さらに端末上で動くとされています。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_-66828-2-1024x576.jpg)

**参照論文情報**

*   タイトル：ReALM: Reference Resolution As Language Modeling
*   著者：Joel Ruben Antony Moniz, Soundarya Krishnan, Melis Ozyildirim, Prathamesh Saraf, Halim Cagri Ates, Yuan Zhang, Hong Yu, Nidhi Rajshree
*   所属：Apple

**本記事の関連研究**：

*   [Appleが、LLMのパラメータを「SSDなどの外部フラッシュメモリに保存し」PCで効率的にモデルを使用する手法を開発](https://ai-data-base.com/archives/61006)　
*   [1.1Bパラメータの小さなモデルを巨大データ（約3兆トークン）で訓練したモデル『TinyLlama』が、比較的優秀な性能を発揮](https://ai-data-base.com/archives/61914)
*   [Microsoftの研究者ら、比較的小さなサイズでもタスクによってはOpenAIのGPT-4を凌駕する言語モデル『Orca2』を開発](https://ai-data-base.com/archives/59349)
*   [従来の小さなニューラルネットワークでも「メタ学習」でChatGPTを凌駕するほど高度な生成AIができるとの報告、Nature誌](https://ai-data-base.com/archives/57838)

## 背景

人間の会話では、「それ」「あれ」「ここ」のような曖昧な言葉がよく使われます。前提が省略されていると意味が分かりませんが、文脈を把握していれば内容は伝わります。

AIが、人間のように「それ」「あれ」「ここ」が何を指しているのかを特定するタスクを「参照問題」と言います。

参照問題タスクの能力が求められる場面はいくつか考えられます。  
例えば、もしモバイルデバイス上のアシスタントがユーザーと同じように画面上の情報を把握することができるならどうでしょうか。究極的にはハンズフリーの状態で指示を音声で理解して、自由自在にデバイスを操作できるようになるかもしれません。  
Appleの研究者らはこの可能性に対して考えを深めることにしました。

なお、彼らは参照問題タスクをこなすことを参照解決（Reference Resolution）と呼んでいます。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_-66828_1.png)

ユーザーとエージェント間の対話サンプル。画面上の情報を指して次の指示を与えている。

現状の会話型アシスタントは、画面上の文脈や参照情報を把握することがないため、ユーザーから「それ」「あれ」「ここ」と言われても指示を理解したり会話を続けることができません。

つまり、ユーザーはスマートフォンの画面を見ながら「それ」について話したいし聞きたい、しかし現在スマホ上のアシスタントは「それ」と言われただけでは分からない、ということです。

従来の技術では、画面情報を用いた参照問題タスクを高性能に行うことは叶いませんでした。しかし、LLMなら、エンドツーエンドで高品質な参照体験をもたらす可能性があります。

そこでAppleの研究者らは今回、参照問題タスクの解決に特化した、モバイル端末上で動くほど小さなモデルの開発を試みました。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.