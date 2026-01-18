---
source_url: https://ai-data-base.com/archives/64057
captured_at: 2026-01-18T13:23:08.986Z
title: "LLMに敢えて間違わせてルールを覚えさせるプロンプト手法 Google DeepMindなどが考案 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:08:40+09:00
conversion_method: Readability+Turndown
file_hash: f2ba867702c6fc31
---

LLMが同じミスを避けるために、意図的に間違わせてルールを覚えさせる新しいプロンプト手法が提案されています。

本手法によって、モデルは自ら原則をまとめ上げ、未見の例にも適応します。実験では、GPT-3.5とGPT-4における複雑な質問応答や、数学の問題への性能向上が報告されています。

![](https://ai-data-base.com/wp-content/uploads/2024/02/AIDB_64057-1024x576.jpg)

**参照論文情報**

*   タイトル：In-Context Principle Learning from Mistakes
*   著者：Tianjun Zhang, Aman Madaan, Luyu Gao, Steven Zheng, Swaroop Mishra, Yiming Yang, Niket Tandon, Uri Alon
*   所属：UC Berkeley, Carnegie Mellon University, Google DeepMind, AI2.

**本記事の関連研究**：

*   [CoTの推論ステップ数がLLMの推論能力に及ぼす影響を詳細に検証した結果](https://ai-data-base.com/archives/62364)
*   [基盤モデル（GPT-4）はプロンプトの工夫で専門特化モデルに匹敵するほど性能が向上することが「医学分野」で示唆される](https://ai-data-base.com/archives/59798)
*   [LLMにまず前提から尋ることで出力精度を向上させる『ステップバック・プロンプティング』と実行プロンプト](https://ai-data-base.com/archives/56671)
*   [GPT-4などのLLMに「自らの論理的な整合性をチェック」させるフレームワーク『LogiCoT』と実行プロンプト](https://ai-data-base.com/archives/55805)

## 背景

LLMが急速に進化する中、実用においては下流タスク（具体的で細分化されたタスク）の性能向上に注目が集まっています。そこで低コストな手法であるコンテキスト内学習（In-Context learning）が注目されています。いわゆるプロンプトエンジニアリングとも呼ばれる技術分野であり、OpenAIやGoogleといった基盤モデルの提供元も理論的なプロンプト構築を推奨しています。

コンテキスト内学習の中でも、「フューショットプロンプティング（Few-Shot Prompting）」と呼ばれる手法は汎用的に有用と言われています。LLMに少数の入出力例を提示し、未知の新しい入力に対する出力を生成するよう促すアプローチです。多くのタスクで非常に効率的ですが、これまでは正解の例から学習することにフォーカスされており、間違いから学ぶという重要な戦略は十分に活用されていません。

過去に行われてきた研究では、LLMが自身の出力を反省して改善する方法（Self-RefineやOptimization by PROmpting（OPRO）など）が探求されています。しかし、直接的なフィードバックや大量の訓練データを必要とするといった課題があります。

また、否定的な例から学習を促す手法（Contrastive Chain-of-Thought）も提案されましたが、一貫した改善をもたらすことまでは示せていませんでした。

こうした背景から、研究者らは「LEAP（Learning Principles）」という新しい手法を提案しています。モデルが与えられた例から間違いを犯し、それを振り返ることを促す手法です。最終的には明確なタスク固有の原理を形成することで、類似の誤りを避けることを可能にします。

下記では具体的な方法論と実際に使用できるプロンプトテンプレート、そして本手法の性能を示す実験結果を紹介します。

## 方法論

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.