---
source_url: https://ai-data-base.com/archives/61286
captured_at: 2026-01-18T13:21:25.115Z
title: "Gemini Pro 対 GPT-4V、画像認識能力でどちらが優秀なのか - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:09:56+09:00
conversion_method: Readability+Turndown
file_hash: 54f80f4727f77aa8
---

GPT-4Vに対してGeminiの画像認識能力はどれほど性能が高いのか、さまざまなタスクで比較した実験結果が報告されました。

非常に多岐にわたるケーススタディを行った結果、両者の特性の違いが浮き彫りになってきています。  
Geminiは画像とテキストの情報を統合する能力に長けているとのことです。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286-1024x576.jpg)

**参照論文情報**

*   タイトル：A Challenger to GPT-4V? Early Explorations of Gemini in Visual Expertise
*   著者：Chaoyou Fu et al.（多数）
*   所属：Tencent Youtu Lab, Xiamen University, ECNU, USTC, Peking University, Shanghai AI Laboratory
*   URL：[https://doi.org/10.48550/arXiv.2312.12436](https://doi.org/10.48550/arXiv.2312.12436)
*   GitHub：[https://github.com/BradyFU/Awesome-Multimodal-Large-Language-Models](https://github.com/BradyFU/Awesome-Multimodal-Large-Language-Models)

## 研究の背景

近年、人間のように複雑な情報を処理できるマルチモーダルAIの開発が進んでいます。マルチモーダルAIとは、異なる種類のデータ（例えばテキスト、画像、音声など）を理解し、組み合わせて処理するAIのことです。

現在、マルチモーダルAIの最先端としてGPT-4Vの存在があります。GPT-4Vは、言語と視覚情報を組み合わせたタスクで高いパフォーマンスを示すことで知られているモデルです。

**本記事の関連研究**：[OpenAI、ChatGPTが画像を分析する『GPT-4V（ビジョン）』を発表。安全性、嗜好性、福祉機能を強化](https://ai-data-base.com/archives/55622)

一方、GPT-4Vに比肩する性能を持つとされる新たな多モーダルAIモデルGeminiが登場したことにより、どちらの性能が高いのか注目されるようになりました。

**本記事の関連研究**：[Googleが「人間の専門家レベルを超える最初のモデル」とする『Gemini』発表、GPT-4を凌駕](https://ai-data-base.com/archives/60035)

そこでテンセントなどの研究者らは、GPT-4VとGeminiの能力を客観的に評価し、それぞれのモデルの特性を理解することで、より洗練されたAIの開発に繋げようと考えました。なお、GPT-4VとGeminiに加えてSPHINXというマルチモーダルモデルも一緒に検証されています。

## AIの基本的な認識能力

まずはモデルがデータをどのように処理し、理解するかの基本が確かめられました。

### 物体中心の認識

物体の空間位置関係やオブジェクトを数えたりなどの基本的なタスクがあります。しかしモデルは左右の概念など、単純な空間的方向性を理解することに苦労していることが示されています。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286_2.jpg)

### シーンレベルの認識

シーン全体を見る場合は、モデルは視覚的要素を可能な限り詳細に説明するように求められます。GPT-4Vは要素が密集している環境でも優れた性能を示しています。一方でビデオシーンの理解もテストされ、Geminiは異なるフレームからの情報を統合する能力を見せています。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286_20.jpg)

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286_21.jpg)

### 視覚を超えた理解

なお、モデルは視覚があるだけでなく知識もあります。社会規範や物理法則に共通感覚を適用することで、見たものを理解する能力が高いのです。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286_22.jpg)

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286_23.jpg)

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286_24.jpg)

**本記事の関連研究**：[画像分析機能を持つオープンソースLLM『LLaVA-1.5』登場。手持ちの画像を分析可能。GPT-4Vとの違い](https://ai-data-base.com/archives/56440)

## 発展的な認知能力

### テキストが多く含まれるコンテンツ

Gemini、GPT-4V、そしてSPHINXはフローチャートの理解や表の解析において異なるアプローチを示しました。Geminiは高レベルのアイデアを簡潔に要約する能力に長けており、GPT-4Vは詳細な説明を提供します（が、ときどき間違いが見受けられました）。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286_6.png)

### 抽象的な画像を読み解く力

抽象的な図や、Ravenの進行マトリックスのタスクにおいて、モデルは苦労していました。GPT-4Vは詳細な推論プロセスを示しましたが、最終的な予測は間違っていました。高度な関係性の理解と予測にはまだ課題があるようです。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_61286_25.png)

### 科学問題の解決

GeminiとGPT-4Vは数学問題において優れた性能を示しました。しかし、

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.