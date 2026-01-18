---
source_url: https://ai-data-base.com/archives/65359
captured_at: 2026-01-18T13:24:00.470Z
title: "検索結果をLLMでチェックして自動的に再検索する『MetaRAG』出力精度を大幅に向上 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:08:35+09:00
conversion_method: Readability+Turndown
file_hash: cb4f9ba7ab8900a5
---

メタ認知をRAGに応用し、回答の品質がいまいちだとLLMが認識した際に検索を繰り返すアプローチの有効性が検証されました。

実験の結果、通常のRAGよりも大幅に精度が高い回答が一貫して得られると述べられています。  
今回の条件下では5回反復した時に最高精度になったとのことです。

![](https://ai-data-base.com/wp-content/uploads/2024/03/AIDB_65359_thum-1024x576.jpg)

**参照論文情報**

*   タイトル：Metacognitive Retrieval-Augmented Large Language Models
*   URL：[https://doi.org/10.48550/arXiv.2402.11626](https://doi.org/10.48550/arXiv.2402.11626)
*   機関：Renmin University, Beijing Academy of Artificial Intelligence, University de Montreal
*   著者：Yujia Zhou, Zheng Liu, Jiajie Jin, Jian-Yun Nie, Zhicheng Dou

**本記事の関連研究**：

*   [RAGにおいて取得された情報と事前知識が矛盾しても、情報に説得力があるときLLMは受け入れる](https://ai-data-base.com/archives/64979)
*   [GPT-4にRAG（検索拡張生成）を適用するケーススタディ　臨床問題で人間の医師よりも高い精度を達成](https://ai-data-base.com/archives/63952)
*   [LLMの検索結果をさらに正確にする手法『CRAG（修正型検索拡張生成：Corrective Retrieval Augmented Generation）』](https://ai-data-base.com/archives/63672)
*   [LLMに対するプロンプトで「無関係な」文書を混ぜたほうが出力精度が上がる可能性がRAGシステムの検証で示唆された](https://ai-data-base.com/archives/63536)
*   [LLMに外部知識を取り入れる2つの手法、ファインチューニングとRAGを比較した実験結果](https://ai-data-base.com/archives/63401)
*   [メタ認知をさせてLLMの能力を上げる手法「メタ認知プロンプティング」](https://ai-data-base.com/archives/54435)

## 背景

LLMは時として事実と異なる内容を生成してしまうことがあります（ハルシネーションや幻覚と言われています）。この問題を解決するために考案されたのが、LLMと検索システムを組み合わせる方法（RAG）です。

RAGは、1回の検索で知識を取り出す方式が一般的です。しかし1回きりの検索は単純な情報ニーズには効果的でも、複雑なタスクには不向きという弱点があると考えられています。  
そこで、必要に応じて複数回の検索を行う方法が注目され始めています。ただし、これまで試されてきた方法は回答の誤りを診断する能力に欠けています。

人間の場合は、複雑な問題に直面した時には自分の思考パターンを内省します。これはメタ認知と呼ばれています。今回研究者らは、メタ認知の概念をLLMに取り入れ、検索拡張生成（RAG）の性能向上を目指すことにしました。メタ認知的検索拡張生成フレームワーク（MetaRAG）です。

![](https://ai-data-base.com/wp-content/uploads/2024/03/AIDB_65359_1-1024x742.png)

実験の結果、本手法がRAGの精度を大幅に向上させることが示唆されました。以下で詳しく紹介していきます。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.