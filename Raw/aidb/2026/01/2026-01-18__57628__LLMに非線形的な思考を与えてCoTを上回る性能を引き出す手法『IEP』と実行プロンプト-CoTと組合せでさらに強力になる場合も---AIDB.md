---
source_url: https://ai-data-base.com/archives/57628
captured_at: 2026-01-18T13:17:13.037Z
title: "LLMに非線形的な思考を与えてCoTを上回る性能を引き出す手法『IEP』と実行プロンプト CoTと組合せでさらに強力になる場合も - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:10:07+09:00
conversion_method: Readability+Turndown
file_hash: 857d33132da977e2
---

「ステップバイステップで考えてください」といったプロンプトで知られるChain-of-Thought（CoT）手法に匹敵する性能を持つプロンプト手法『Inferential Exclusion Prompting（IEP）』が研究者たちによって開発されました。IEPは大規模言語モデル（LLM）に非線形的な思考をさせることを目的としています。

IEPは、さまざまなタスクでCoTを上回る性能を示しています。また、さらに興味深いことに、CoTと統合することで、その効果はより一層高まる場合があります。

この研究は、カリフォルニア大学やペンシルバニア大学などの研究者によって行われました。

![](https://ai-data-base.com/wp-content/uploads/2023/10/AIDB_57628-1024x576.jpg)

**参照論文情報**

・タイトル：Eliminating Reasoning via Inferring with Planning: A New Framework to Guide LLMs’ Non-linear Thinking  
・著者：Yongqi Tong, Yifan Wang, Dawei Li, Sizhe Wang, Zi Lin, Simeng Han, Jingbo Shang  
・所属：University of California San Diego, University of Pennsylvania, University of Southern California, Yale University  
・URL：[https://doi.org/10.48550/arXiv.2310.12342](https://doi.org/10.48550/arXiv.2310.12342)

目次

*   [従来の課題や背景](#%E5%BE%93%E6%9D%A5%E3%81%AE%E8%AA%B2%E9%A1%8C%E3%82%84%E8%83%8C%E6%99%AF)
    *   [CoTの特徴と単一で使用する際の限界](#CoT%E3%81%AE%E7%89%B9%E5%BE%B4%E3%81%A8%E5%8D%98%E4%B8%80%E3%81%A7%E4%BD%BF%E7%94%A8%E3%81%99%E3%82%8B%E9%9A%9B%E3%81%AE%E9%99%90%E7%95%8C)
    *   [誤差の伝播](#%E8%AA%A4%E5%B7%AE%E3%81%AE%E4%BC%9D%E6%92%AD)
    *   [単一思考の制限](#%E5%8D%98%E4%B8%80%E6%80%9D%E8%80%83%E3%81%AE%E5%88%B6%E9%99%90)
*   [IEPのフレームワーク](#IEP%E3%81%AE%E3%83%95%E3%83%AC%E3%83%BC%E3%83%A0%E3%83%AF%E3%83%BC%E3%82%AF)
    *   [主要なステップ](#%E4%B8%BB%E8%A6%81%E3%81%AA%E3%82%B9%E3%83%86%E3%83%83%E3%83%97)
*   [PREMIUM](#PREMIUM)

## 従来の課題や背景

![](https://ai-data-base.com/wp-content/uploads/2023/10/AIDB_57628_3.png)

CoT（Chain-of-Thought）テクニックがPaLM2というモデルに誤りを引き起こさせる一例

### CoTの特徴と単一で使用する際の限界

Chain-of-Thought（CoT）は、LLMに推論能力を付与するための一般的な手法です。CoTは線形的な（直線的な）推論を実行させます。簡単に言うと「Aが真ならばBが真」といった形の推論を行わせることが多いです。

CoTは、問題解決の過程を一連のステップに分解し、それぞれのステップで特定の推論を行わせます。例えば、「雨が降っているなら、傘を持つべきだ」というような線形的な推論がCoTの一例です。質問応答（QA）タスクなどでよく使用されます。

しかし、このアプローチにはいくつかの問題点があります。

### 誤差の伝播

CoTは一つの思考のステップが次のステップに影響を与えるという連鎖的な構造を持っています。そのため、中間のステップで生じたわずかな誤差が、連鎖全体に伝播してしまう可能性があります。

CoTの中間ステップの評価は困難であり、最終的な答えだけが評価される傾向があります。中間ステップでの不適切な推論が検出されず、推論の信頼性が低下する場合があります。

### 単一思考の制限

CoTは段階的な推論を実行させるため、多角的な視点や非線形的な思考が疎かにされがちです。複雑な問題に対する多面的な解決策が見落とされる可能性があります。

「非線形」とは？という疑問に対しては後述します。

現実世界の問題は、しばしばCoTのような線形的な推論では解決できないほど複雑です。一方で、われわれ人間の思考は、直感的な発散思考や逆転思考を用いて、多角的な解決策を模索しています。

以上のように、CoTは多くの有用な側面を持ちつつも、その限界と課題が明らかになっています。これらの問題を解決し、LLMの推論能力をさらに高めるためには、新しいフレームワークと手法が必要です。

**本記事の関連研究：**[LLMにまず前提から尋ることで出力精度を向上させる『ステップバック・プロンプティング』と実行プロンプト](https://ai-data-base.com/archives/56671)

![](https://ai-data-base.com/wp-content/uploads/2023/10/AIDB_57628_1.png)

IEP（Inferential Exclusion Prompting）のステップを人間の意思決定プロセスに触発された形で示している図

今回研究者たちは、LLMに高度な推論能力を持たせる新しいフレームワーク、『Inferential Exclusion Prompting（IEP）』を提案しています。複雑な問題解決において、従来のCoT方式の限界を超えることを目的としています。

### 主要なステップ

![](https://ai-data-base.com/wp-content/uploads/2023/10/AIDB_57628_4.png)

IEP（Inferential Exclusion Prompting）のアルゴリズムを構造的に記述したもの

IEPフレームワークは主に以下の3つのステップから成り立っています。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.