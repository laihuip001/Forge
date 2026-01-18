---
source_url: https://ai-data-base.com/archives/66502
captured_at: 2026-01-18T13:24:47.681Z
title: "LLMが生成した長いテキストにおける「事実性」を自動で評価するLLMエージェントフレームワーク『SAFE』Google DeepMindが開発 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:29+09:00
conversion_method: Readability+Turndown
file_hash: 51dfaf7b8efd93fe
---

Google DeepMindとスタンフォード大学の研究者らは、LLMの長文における事実性を評価するための新しい手法を提案しました。

なお事実性とは、言語モデルの出力が事実と矛盾していないことを意味します。

研究者らは、数千の質問からなるプロンプトセットLongFactと、長文の応答を個別の事実に分解して各事実の正確性をGoogle検索を用いた多段階の推論プロセスで評価する『SAFE』を開発しました。

![](https://ai-data-base.com/wp-content/uploads/2024/03/AIDB_-66502-1024x576.jpg)

**参照論文情報**

*   タイトル：Long-form factuality in large language models
*   機関：Google DeepMind, Stanford University
*   著者：Jerry Wei, Chengrun Yang, Xinying Song, Yifeng Lu, Nathan Hu, Dustin Tran, Daiyi Peng, Ruibo Liu, Da Huang, Cosmo Du, Quoc V. Le

**本記事の関連研究**：

*   [RAGにおいてLLMが「役立たない情報を無視」できるようにする『RAFT』QAタスクで従来の手法を大幅に上回る結果を達成](https://ai-data-base.com/archives/66269)
*   [LLMは本当に推論しているか？原理から導かれる長所短所と最適なフレームワーク](https://ai-data-base.com/archives/65459)
*   [検索結果をLLMでチェックして自動的に再検索する『MetaRAG』出力精度を大幅に向上](https://ai-data-base.com/archives/65359)
*   [ユーザーの指示が曖昧なとき、LLM側が確認を行うエージェントアーキテクチャ『Mistral-Interact』](https://ai-data-base.com/archives/64628)

## 背景

LLMは、まだ「事実と異なる内容を生成することがある」という問題が指摘されており、実社会で活用するためには、この”事実性”を高める必要があります。

長文（複数の段落で構成される文章）生成は短文生成に比べて、事実性の維持が特に難しいと考えられています。長文になるほど言及する事実の数が増える上に、文脈や論理の一貫性を保ちながら事実を述べる必要があるためです。

![](https://ai-data-base.com/wp-content/uploads/2024/03/AIDB_66502_1-1024x401.png)

SAFEの概念図。

そこで重要になるのが、事実性評価です。従来はプロンプトセット（言語モデルに入力する質問や指示のデータセット）が使用されてきましたが、その多くは長文の回答の評価には適していませんでした。また、回答の評価も人手に頼ることが多く、コストと手間がかかるという問題がありました。

こうした背景から、研究者らはLLMの長文での事実性を評価するための新たな手法の構築に取り組みました。

以下で詳しく紹介します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.