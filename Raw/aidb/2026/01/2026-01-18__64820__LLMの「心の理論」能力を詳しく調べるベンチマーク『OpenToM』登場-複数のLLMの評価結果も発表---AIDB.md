---
source_url: https://ai-data-base.com/archives/64820
captured_at: 2026-01-18T12:54:45.206Z
title: "LLMの「心の理論」能力を詳しく調べるベンチマーク『OpenToM』登場 複数のLLMの評価結果も発表 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-04-01T23:36:03+09:00
conversion_method: Readability+Turndown
file_hash: 7d50d165676f8761
---

人間同士の円滑なコミュニケーションに不可欠なのが「相手の考えや心理状態を理解する」能力で、専門用語では「心の理論」と言います。そしてAIシステムが人と上手く関わるためには、この「心の理論」の能力が必要です。

そこで研究者らは、高度な評価を可能にする指標「OpenToM」を開発しました。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_64820_thum-1024x576.jpg)

**参照論文情報**

タイトル：OpenToM: A Comprehensive Benchmark for Evaluating Theory-of-Mind Reasoning Capabilities of Large Language Models  
機関：King’s College London, Huawei London Research Centre, The Alan Turing Institute  
著者：Hainiu Xu, Runcong Zhao, Lixing Zhu, Jinhua Du, Yulan He

**本記事の関連研究**：

*   [ChatGPTを心理療法にもとづいて実行し、高い共感力と思いやりある会話をさせる手法『Chain of Empathy』と実行プロンプト](https://ai-data-base.com/archives/58847)
*   [ポーカーなど不完全情報ゲームを「心の理論」で上手にプレイするGPT-4ベースの『Suspicion（疑心）-Agent』松尾研など開発](https://ai-data-base.com/archives/56141)
*   [ChatGPTなどのLLMにユーザーの性格特性を分析させる手法『PsyCoT』と実行プロンプト](https://ai-data-base.com/archives/59193)
*   [LLMの個別の性格（人格）特性を、プロンプトで「測定」「形成」する手法](https://ai-data-base.com/archives/55413)

## 背景

人と上手にコミュニケーションするには、相手が自分とは違う物の見方をすることを理解する力（心の理論）が欠かせません。機械にも同様の力があれば、人と上手く関われるようになるかもしれません。

これまでには、人間の心理テストを言語モデルに解かせる研究などが行われてきました。しかし、単純な心理テストでは登場人物に性格や好みが設定されていなかったり、行動の理由がなかったりするため、AIの真の実力を測りきれませんでした。その結果、GPT-4などの言語モデルには心の理論を理解する力があると主張する研究がある一方、それを否定する研究もありました。  
また、これまでの調べ方はデータ量が限られており、文章が不自然であったり、質問の種類が少ない、といった課題もありました。

そこで今回、アランチューリング研究所（イギリスの大規模なAI研究機関）などの研究者らは、より高度な「心の理論」能力の評価を可能にする「OpenToM」という指標を開発しました。

「OpenToM」は自然な文章でできており、登場人物たちには性格が設定され、また行動には理由があります。そして読み解く者（LLM）に対しては、物理的な思考だけでなく、登場人物の気持ちにも焦点をあてた質問が投げかけられます。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.