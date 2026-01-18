---
source_url: https://ai-data-base.com/archives/68219
captured_at: 2026-01-18T13:25:37.844Z
title: "小さなRetrieverとLLMの組み合わせによる実用的なワークフロー生成システム またはRAGで幻覚を減らす手法 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:25+09:00
conversion_method: Readability+Turndown
file_hash: 4d7a9944a0f2d5ab
---

自動化のためのワークフロー生成における、ハルシネーションを低減するRAGシステムに関する研究について紹介します。

限られたリソースでも信頼性の高いLLMアプリケーションを構築するためにRAGの実装を工夫した取り組みです。

実験の結果、わずか110Mパラメータの小さなretrieverと7BパラメータのLLMを組み合わせるだけで、性能を損なうことなく実用的なシステムを構築できることが示されています。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_68219-1024x576.jpg)

**参照論文情報**

*   タイトル：Reducing hallucination in structured outputs via Retrieval-Augmented Generation
*   著者：Patrice Béchard, Orlando Marquez Ayala
*   所属：ServiceNow

**本記事の関連研究**：

*   [LLMによりクエリを生成するアプローチで情報検索の精度を上げる方法](https://ai-data-base.com/archives/66942)
*   [RAGにおいてLLMが「役立たない情報を無視」できるようにする『RAFT』QAタスクで従来の手法を大幅に上回る結果を達成](https://ai-data-base.com/archives/66269)
*   [RAGにおいて取得された情報と事前知識が矛盾しても、情報に説得力があるときLLMは受け入れる](https://ai-data-base.com/archives/64979)
*   [ファインチューニングとRAGを比較実験した結果　LLMに外部知識を取り入れる手法としての違い](https://ai-data-base.com/archives/63401)

## 背景

近年LLMの性能向上によって、自然言語による指示から、プログラミングコードなどの構造化された出力を、高精度に生成可能になってきました。

同様に、自然言語の指示から、構造化された「ワークフロー」を生成するアプリケーションも開発されています。ワークフローとは、ある一連の手続きの流れをシステム化したものです。

ビジネスの場では、このようなワークフローを用いて単純作業を自動化し、生産性を向上させる場面が多くあります。特に、最近では生成AIの活用によって、簡単な自然言語の指示だけで、非エンジニアでもワークフローを生成できると期待が高まってきました。

しかし、LLMには「幻覚（ハルシネーション）」という決定的な弱点があります。ハルシネーションとは、LLMが事実とは異なる出力を生成してしまう問題のことです。

その問題に対処するために、RAG(Retrieval-Augumented Generation)という手法が用いられてきました。RAGとは、外部の情報を検索し、その情報をもとにLLMが回答を生成するという手法です。ハルシネーションを低減させ、事実にもとづく出力が実現できるとされています。

本論文では、自然言語の指示からワークフローを生成するタスクにおいて、RAGを用いることでハルシネーションを減らし、より品質の高いワークフローを生成する方法が提案されています。

本研究では、ワークフローはJSON形式として表現され、各処理ステップがJSONオブジェクトとなります。下図は、テキスト指示と、それに対応するJSONドキュメントの例です。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.