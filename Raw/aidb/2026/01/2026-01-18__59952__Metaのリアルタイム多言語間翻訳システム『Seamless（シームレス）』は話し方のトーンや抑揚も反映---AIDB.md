---
source_url: https://ai-data-base.com/archives/59952
captured_at: 2026-01-18T13:20:41.891Z
title: "Metaのリアルタイム多言語間翻訳システム『Seamless（シームレス）』は話し方のトーンや抑揚も反映 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:10:00+09:00
conversion_method: Readability+Turndown
file_hash: 5fc6f88127da0cbb
---

現代のコミュニケーションでは、言語の壁が大きな障害となることが多く、シームレスな翻訳ツールの登場が待たれています。一方でこれまでの自動翻訳システムは、正確な意味の翻訳に重点を置きつつも、人間同士の対話に比べて、その自然さや表現の多様性に欠けるところがありました。

今回Metaが開発したSeamlessは、上記のような社会のニーズに応えるために設計されたものです。

本記事では、Seamlessの研究背景、性能、他システムへの優位性などについて紹介します。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59952_thum3-1024x576.jpg)

**参照論文情報**

*   タイトル：Seamless: Multilingual Expressive and Streaming Speech Translation
*   著者：Loïc Barrault et al.
*   URL：[https://ai.meta.com/research/publications/seamless-multilingual-expressive-and-streaming-speech-translation/](https://ai.meta.com/research/publications/seamless-multilingual-expressive-and-streaming-speech-translation/)
*   GitHub：[https://github.com/facebookresearch/seamless\_communication](https://github.com/facebookresearch/seamless_communication)
*   プロジェクトページ：[https://ai.meta.com/research/seamless-communication/](https://ai.meta.com/research/seamless-communication/)

**本記事の関連研究**：[大規模言語モデルが音声をダイレクトに理解する能力を与える　Metaとケンブリッジ大](https://ai-data-base.com/archives/54037)

## 研究背景

機械翻訳の研究は長い間、テキストに集中してきました。その結果、本やウェブページ、メッセージなどのテキストベースのコンテンツの翻訳は進歩しましたが、一方で音声翻訳の分野では遅れが見られています。

音声翻訳においては抑揚、トーン、タイミングなどを考慮できれば、用途はかなり広がりを見せます。一方で、計算上の課題がありました。近年では研究開発も進んできましたが、現在の大規模自動音声翻訳システムは、人間同士の対話のようなシームレスなコミュニケーションをサポートすることはできていないと指摘されています。

理想的には、映画『スタートレック』に登場する「ユニバーサルトランスレータ」のように、手間をかけずに表現力豊かでリアルタイムの翻訳を提供するようなシステムが期待されています。

このような背景の中、Metaの研究チームは、ハイクオリティーな多言語音声翻訳システムを開発することにしました。抑揚の反映など表現力豊かな翻訳に挑戦しており、言語の壁を超えたコミュニケーションを促進しようと考えています。

**本記事の関連研究**：[AudioGPT：音声認識から歌声合成まで](https://ai-data-base.com/archives/52272)

今回開発されたシステム『Seamless』の主な特徴を並べます。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59952_1-1024x380.png)

### 1\. 多言語翻訳、感情や抑揚の反映

Seamlessは、翻訳において、話し手の感情や抑揚をしっかりと保持するとのことです。細かなレベルでの表現力（例えば、トーン、感情表現、話者の声のスタイル）を重視しています。従来の研究ではあまり探求されてこなかった側面、例えば話す速度や休むタイミングも含まれます。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59952_2.png)

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59952_3.png)

カバーする言語

### 2\. 多様な翻訳モードのサポート

Seamlessは、下記の翻訳タスクをカバーしています。

*   音声からテキスト（S2T）
*   テキストから音声（T2S）
*   音声から音声（S2S）

多様なコミュニケーション形式においてシームレスな翻訳を実現する設計になっています。

### 3\. 大規模自己教師あり学習と多言語事前学習による実現

SeamlessM4T v2（開発されたモデル）は、大規模自己教師あり学習と多言語事前学習を用いています。細かい調整（微調整）を通じて、より多くの低リソース言語データを含むトレーニングが行われているとのことです。ほぼ100の言語を入力として受け付け、96の言語をテキスト出力、36の言語を音声出力としてカバーします。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59952_4.png)

### 4\. 実用性とアクセシビリティ

SeamlessExpressive（抑揚を包括的に保持するオフライン翻訳モデル）とSeamlessStreaming（多言語ストリーミング音声翻訳モデル）を組み合わせることで、リアルタイムで表現力豊かな音声翻訳を実現しています。

**本記事の関連研究**：[自分の話し声を別の誰かの声にリアルタイム変換するモデルが、一般消費者向けCPUで動かせる軽さで登場](https://ai-data-base.com/archives/58291)

## 技術的なフレームワーク

本ツールのフレームワークは下記の通りです。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.