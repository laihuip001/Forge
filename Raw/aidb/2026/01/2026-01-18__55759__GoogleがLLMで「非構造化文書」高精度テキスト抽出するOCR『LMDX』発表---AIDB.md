---
source_url: https://ai-data-base.com/archives/55759
captured_at: 2026-01-18T13:16:13.428Z
title: "GoogleがLLMで「非構造化文書」高精度テキスト抽出するOCR『LMDX』発表 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:10:12+09:00
conversion_method: Readability+Turndown
file_hash: 71d39ffd3c5c7007
---

Googleは、非構造化文書（例えばレシートなど）から高精度にテキストを抽出するOCR（Optical Character Recognition）技術『LMDX（Language Model-based Document Information Extraction and Localization）』を発表しました。この技術は、特にGoogleの大規模な言語モデル「Bard」と、Google DriveやGmailなどのサービスとの連携をさらに強化する可能性もあります。

**参照論文情報**

*   タイトル：LMDX: Language Model-based Document Information Extraction and Localization
*   著者：Vincent Perot, Kai Kang, Florian Luisier, Guolong Su, Xiaoyu Sun, Ramya Sree Boppana, Zilong Wang, Jiaqi Mu, Hao Zhang, Nan Hua
*   所属：Google、カリフォルニア大学
*   URL：[https://doi.org/10.48550/arXiv.2309.10952](https://doi.org/10.48550/arXiv.2309.10952)

https://twitter.com/ai\_database/status/1705550344410042565

**関連研究**

*   [OpenAI、ChatGPTが画像を分析する『GPT-4V（ビジョン）』を発表。安全性、嗜好性、福祉機能を強化](https://ai-data-base.com/archives/55622)
*   [数式や文章がぐにゃぐにゃに曲がった論文PDFでもくっきり認識する画期的なOCR『Nougat』](https://ai-data-base.com/archives/54869)

## 従来の課題と背景

### 文脈の考慮が不十分

従来のOCR技術は、非構造化や半構造化の文書からテキストを抽出する際に、文脈の考慮が不十分でした。テキスト認識と解析が別々のステージで行われていたため、文脈とレイアウトの統合が困難でした。

### レイアウトの柔軟性に欠ける

さらに、従来の方法では多様なレイアウトに対応する能力が限られていました。特に、請求書や税務書類などの半構造化形式の文書においては、テンプレートが多様であり、その柔軟性に対応するのが難しかったです。

### データ効率の低さ

また、多くの文書パーサーは非常に少量のデータで構築されていました。これは、注釈リソースが限られている一方で、文書の種類が無限であるため、データ効率が非常に低いという問題がありました。

### BardとGoogleサービス群の連携

GoogleのBardは、最新のアップデートでさらに多くの機能を追加しました。BardはGoogleの各種アプリとサービスと連携することが可能になり、GmailやGoogle Driveなどから情報を取得することができます。

BardがGoogle driveやGmailなどのサービス群と強力に連携するためには、画像ベースの非構造化・半構造化ドキュメントを理解する能力が求められています。なぜなら、個人のGoogle driveやGmailには非構造化・半構造化ドキュメントが大量に保存されている場合があるからです。

GoogleのBardは非構造化・半構造化データからの情報抽出においては、上述の課題によりその能力は制限されていました。

![](https://ai-data-base.com/wp-content/uploads/2023/09/AIDB_55759_1-1024x495.jpg)

Googleの研究者らが開発した『LMDX』は、非構造化文書からの情報抽出を高度に行うOCRフレームワークです。このフレームワークは、以下の5つの主要なステップから構成されています。

1.  **OCRステップ**
2.  **Chunkingステップ**
3.  **Prompt Generationステップ**
4.  **LLM Inferenceステップ**
5.  **Decodingステップ**

### OCRステップ

このステップでは、画像やPDFから文字情報を光学的に読み取ります。このプロセスは、文書内のテキストをデジタル形式に変換する基礎となるステップです。

### Chunkingステップ

OCRで検出された文字情報は、このステップで単語や文章に「チャンキング」（区切り）されます。これにより、次のステップでLLMによる解析が容易になります。

### Prompt Generationステップ

チャンキングされたテキストをもとに、LLMに問い合わせるための「プロンプト」が生成されます。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.