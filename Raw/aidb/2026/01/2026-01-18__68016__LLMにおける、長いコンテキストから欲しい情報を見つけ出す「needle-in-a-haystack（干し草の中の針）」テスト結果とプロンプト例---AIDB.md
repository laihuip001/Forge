---
source_url: https://ai-data-base.com/archives/68016
captured_at: 2026-01-18T13:25:28.841Z
title: "LLMにおける、長いコンテキストから欲しい情報を見つけ出す「needle-in-a-haystack（干し草の中の針）」テスト結果とプロンプト例 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:25+09:00
conversion_method: Readability+Turndown
file_hash: 9ff8daabf5b0eabc
---

LLMがプロンプト内の情報をどの程度正確に抽出できるかを評価した研究が報告されています。VMwareの研究者らによる実験の結果、モデルの情報抽出能力はプロンプトに大きく依存することが明らかになりました。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_68016-1024x576.jpg)

**参照論文情報**

*   タイトル：LLM In-Context Recall is Prompt Dependent
*   著者：Daniel Machlab, Rick Battle
*   所属：VMware NLP Lab

**本記事の関連研究**：

*   [LLMにおける情報抽出（文章から必要な事柄を読み取る）タスクについての調査](https://ai-data-base.com/archives/61703)
*   [表とテキストを両方含むドキュメントからLLMで上手に情報抽出を行う手法](https://ai-data-base.com/archives/65583)
*   [Claude 3のベンチマーク評価結果　論文（テクニカルレポート）より](https://ai-data-base.com/archives/65693)
*   [GoogleのGeminiファミリー最新モデル「Gemini 1.5 Pro」1000万トークンでほぼ完璧な検索性能](https://ai-data-base.com/archives/65862)

## 背景

LLMの性能を適切に評価することが課題となっています。モデルの長所や短所、最適な適用領域を見極めるためには、綿密な評価が不可欠であるためです。

LLMの性能評価において特に重要なのが、「与えられたコンテキスト（プロンプト）に含まれる情報をどの程度正確に取り出せるか」という点です。文脈の詳細をうまく活用できるかどうかに直結するため、実用上の有効性と信頼性に大きく影響します。つまり、LLMをより効果的に活用するための指針となるのです。

そこで研究者らは、needle-in-a-haystack（干し草の中の針）と呼ばれる手法を用いて、様々なLLMの情報抽出能力を分析しました。特定の事実（needle）を大量のテキスト（haystack）の中に埋め込み、それをモデルに取り出させます。haystackの長さやneedleの位置を変えながら、各モデルの性能を評価することで、パフォーマンスのパターンを特定できるという考えです。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.