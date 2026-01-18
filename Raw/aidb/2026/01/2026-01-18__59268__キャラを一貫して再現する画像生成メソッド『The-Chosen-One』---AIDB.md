---
source_url: https://ai-data-base.com/archives/59268
captured_at: 2026-01-18T13:17:57.397Z
title: "キャラを一貫して再現する画像生成メソッド『The Chosen One』 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:10:02+09:00
conversion_method: Readability+Turndown
file_hash: 0065865725ec92df
---

画像生成において、特定のキャラクターを一貫して生成することは長らくの課題です。生成される各キャラクターは独自の特徴を持ち、以前のものと異なる場合が多いのです。ある意味「一期一会」とも言えるような状況です。

この問題に対処するため、Googleを含む複数の研究機関の研究者たちは、『The Chosen One』という手法を開発しました。テキストプロンプトから一貫したキャラクター生成を可能にする手法です。本手法は従来からの課題である一貫性の欠如を解決し、キャラクター生成の新たな局面を切り開くかもしれません。

この記事では、『The Chosen One』の開発背景、主要なポイント、実験結果、そして方法について紹介します。創作、アセットデザイン、広告など、様々な分野での応用が期待される手法です。

![](https://ai-data-base.com/wp-content/uploads/2023/11/AIDB_59268-1024x576.jpg)

**参照論文情報**

*   タイトル：The Chosen One: Consistent Characters in Text-to-Image Diffusion Models
*   著者：Omri Avrahami, Amir Hertz, Yael Vinker, Moab Arar, Shlomi Fruchter, Ohad Fried, Daniel Cohen-Or, Dani Lischinski
*   所属：Google Research, The Hebrew University of Jerusalem, Tel Aviv University, Reichman University
*   URL：[https://doi.org/10.48550/arXiv.2311.10093](https://doi.org/10.48550/arXiv.2311.10093)
*   GitHub：[https://omriavrahami.com/the-chosen-one](https://omriavrahami.com/the-chosen-one)

**本記事の関連研究**：[人物の「不自然さ」を極限まで取り除いて超リアルな画像を生成する『HyperHuman（ハイパーヒューマン）』](https://ai-data-base.com/archives/56844)

## 一貫したキャラクター生成へのニーズ

テキストから画像を生成する技術が登場してから、ユーザーは仕事や創作の幅を広げ、タスクを効率化しています。しかし実は、特定のキャラクターを「異なる文脈で一貫して生成する」という大きな課題に直面しています。

現状では、ターゲットキャラクターの複数の既存画像に依存するか、手間のかかる手動プロセスを含むことが一般的です。

一貫性のあるコンテンツが要求されるシーンとしては、本、ブランド、プレゼンテーション、ウェブページデザイン、ゲームアセットなど、数多くあります。

**本記事の関連研究**：[DALL-E 3はどうしてユーザーの意図を正確に汲み取ることができるのか？OpenAIが論文で発表](https://ai-data-base.com/archives/57310)

そこでGoogleなどの研究者らは、テキストプロンプトから一貫したキャラクター生成を行うソリューション『The Chosen One』を提案しています。

![](https://ai-data-base.com/wp-content/uploads/2023/11/AIDB_59268_1.jpg)

画像生成モデルにおける一貫性の課題に対応し、従来のアプローチを進化させるものとなっています。

### **1\. テキストプロンプトからの一貫したキャラクター生成**

『The Chosen One』の核心は、テキストプロンプトのみを使用して、一貫性のあるキャラクターを生成する能力にあります。キャラクターは異なるシナリオや環境下で再現されても、そのアイデンティティを保持するとのことです。物語性のあるメディアやブランドアイデンティティでの活用が期待されています。

### **2\. 特徴ベースの画像クラスタリング**

本手法の技術的なポイントとして中心となるのは、生成された画像群を、それぞれの特徴を基にクラスタリング（分類）するプロセスです。特徴に基づく画像分類を通じて、類似したアイデンティティ特性を共有する画像のグループを特定し、それらの画像からより一貫性のあるキャラクター表現を洗練します。キャラクターの外見の一貫性を維持しつつ、多様な表現を可能にするための鍵となります。

![](https://ai-data-base.com/wp-content/uploads/2023/11/AIDB_59268_4.png)

『The Chosen One』の方法論の概要

### 3\. **多岐にわたる実用的応用の可能性**

異なる文脈やシナリオでも同一のキャラクターを維持できれば、それはビジュアルの一貫性が重要視される分野全般で価値を持ちます。例えば、ゲーム開発、広告制作など、幅広い分野での応用が期待されています。また、

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.