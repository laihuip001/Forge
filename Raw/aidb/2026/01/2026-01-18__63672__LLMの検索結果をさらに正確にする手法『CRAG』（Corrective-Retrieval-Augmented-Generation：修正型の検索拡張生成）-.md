---
source_url: https://ai-data-base.com/archives/63672
captured_at: 2026-01-18T13:22:47.607Z
title: "LLMの検索結果をさらに正確にする手法『CRAG』（Corrective Retrieval Augmented Generation：修正型の検索拡張生成） - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:08:42+09:00
conversion_method: Readability+Turndown
file_hash: 9c7b25448d998a46
---

LLMは知識が不足しているときに不正確な出力をしてしまうことがあります。そして知識を足すために検索を活用する手法（RAG）では、「検索結果の正確性」が鍵となります。

そこでGoogleなどの研究者らは今回、モデルが検索した結果の信頼性を評価する手法を提案しています。もし不正確だと思われる場合には補完することで、より正確な文章生成を実現する仕組みになっています。

研究者らが行った評価実験により、本手法の性能が実証されています。

![](https://ai-data-base.com/wp-content/uploads/2024/02/AIDB_63672-1024x576.jpg)

**参照論文情報**

*   タイトル：Corrective Retrieval Augmented Generation
*   著者：Shi-Qi Yan, Jia-Chen Gu, Yun Zhu, Zhen-Hua Ling
*   所属：University of Science and Technology of China, University of California, Google Research

**本記事の関連研究**：

*   [LLMに対するプロンプトで「無関係な」文書を混ぜたほうが出力精度が上がる可能性がRAGシステムの検証で示唆された  
    ](https://ai-data-base.com/archives/63536)
*   [LLMに外部知識を取り入れる2つの手法、ファインチューニングとRAGを比較した実験結果  
    ](https://ai-data-base.com/archives/63401)
*   [LLMのRAG（外部知識検索による強化）をまとめた調査報告  
    ](https://ai-data-base.com/archives/61367)
*   [RAG（検索拡張生成）において約半分のトークン数でタスクを実行できるフレームワーク『FIT-RAG』](https://ai-data-base.com/archives/66427)

## 背景

LLMは文章生成などを中心に様々なタスクで優れた能力を発揮しますが、誤った情報や知識を出力してしまう「ハルシネーション」という問題を抱えています。

そんな知識不足の問題に対処することを目的の一つとして、モデルが関連する情報を取り込む手法「RAG：Retrieval-Augmented Generation」が出現しました。Metaなどの研究者らによる2020年の考案に端を発するものです。

しかしRAGは有効な手段ではあるものの、取り込んだ文書が間違っていた場合、かえって誤りを助長するという課題があります。

最近の研究では、必要な時に必要な外部知識を取り込むなど、RAGの改善が進められています。これまで、「RAGをより便利に」「そもそも使うべきか」という点を中心に探求されてきました。

そして今回、Googleなどの研究者らは「取り込んだ情報が間違っている場合」に焦点を当て、従来の手法とは異なるアプローチ「修正型検索拡張生成（CRAG：Corrective Retrieval Augmented Generation）」を提案しています。

CRAGの利点は以下にようにまとめられるとのことです。

*   不正確な情報を排除し、信頼できる情報のみを使用する
*   取得された情報から重要な情報のみを抽出し、不要な部分を削除する
*   他のLLM手法と容易に統合することができ、さまざまなタスクに適用することができる

本記事では詳細を紹介します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.