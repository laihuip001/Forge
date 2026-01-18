---
source_url: https://ai-data-base.com/archives/73468
captured_at: 2026-01-18T13:29:12.115Z
title: "RAGとLong-Contextの比較、そしてハイブリッドで活用する新しい方法 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T19:25:11+09:00
conversion_method: Readability+Turndown
file_hash: cc656ac0023f2b8e
---

本記事では、RAG（検索拡張生成）と、ロングコンテキストLLM（長文を処理できる大規模言語モデル）を比較した最新研究を紹介します。

Googleの研究者らは、複数のベンチマークデータセットを用いてRAGとロングコンテキストLLMの性能を評価し、さらに両者の長所を組み合わせたアプローチ「Self-Route」を提案しています。

またRAGの失敗原因の詳細な分析なども含めた多角的な考察が行われています。

![](https://ai-data-base.com/wp-content/uploads/2024/07/AIDB_73468-1024x576.jpg)

**参照論文情報**

*   タイトル：Retrieval Augmented Generation or Long-Context LLMs? A Comprehensive Study and Hybrid Approach
*   著者：Zhuowan Li, Cheng Li, Mingyang Zhang, Qiaozhu Mei, Michael Bendersky
*   所属：Google DeepMind, University of Michigan

**本記事の関連研究**：

*   [ロングコンテキストはRAGもText to SQLも解決するか　Googleがケーススタディを実施](https://ai-data-base.com/archives/71486)
*   [RAGにおいて長文を検索することで一気に効率を上げるアプローチ『LongRAG』](https://ai-data-base.com/archives/71774)
*   [多くの「長いコンテキストを要するタスク」を、短いコンテキストウィンドウのLLMで解決する手法](https://ai-data-base.com/archives/69938)
*   [LLMのプロンプトに数百から数千の例を含める超長尺のコンテキスト内学習（In-context learning）とファインチューニングの性能比較](https://ai-data-base.com/archives/68564)

## 背景

最近、LLMに長文を理解させることが注目を集めています。LLMの長文理解に対しては、RAGとロングコンテキストLLMの2つがアプローチとして該当します。

RAGは、入力されたクエリに関連する情報を外部のデータベースから検索し、その情報をもとにLLMが回答を生成します。外部知識にアクセスすることで、効率的に長文を処理することが可能となります。

ロングコンテキストLLMについては、最新のLLMモデルであるGeminiなどは、直接数百万トークンもの長い文脈を理解する能力を示しています。

RAGとロングコンテキストLLMにはそれぞれ長所と短所があります。RAGは計算コストが低いという長所がありますが、複雑な推論を要する質問に対しては性能が劣る場合があります。一方、ロングコンテキストLLMは高い性能を示す一方で、計算コストが高くなるという問題があります。

今回研究者らは、RAGとロングコンテキストLLMの性能と効率性を様々な公開データセットで徹底的に比較しました。さらに、両者の長所を活かすハイブリッドアプローチも提案しています。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.