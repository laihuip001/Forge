---
source_url: https://ai-data-base.com/archives/51873
captured_at: 2026-01-18T13:11:33.729Z
title: "Microsoftの画像セグメンテーション新技術「SEEM（Segment Everything Everywhere Model）」の凄さ、Meta AIのSAMとの違い - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:11:31+09:00
conversion_method: Readability+Turndown
file_hash: d5132b0127e3c5ba
---

近年、画像セグメンテーション技術は、その発展に伴いさまざまな分野で活用されています（そもそもセグメンテーションとは何か？については最初のセクションで紹介します）。一方で、従来の手法では柔軟性に限界がありました。本記事では、新たな画像セグメンテーション技術「SEEM（Segment Everything Everywhere All at Once）」について、その特徴や応用事例を紹介します。

![](https://ai-data-base.com/wp-content/uploads/2023/04/AIDB_51873_top_2-1024x576.jpg)

セクション数が多く長い記事に思えますが、工夫を凝らして読みやすくしていますので、ぜひお気軽にご覧ください。

**目次**[](https://ai-data-base.com/archives/51873#)

*   [そもそもセグメンテーションとは](https://ai-data-base.com/archives/51873#%E3%81%9D%E3%82%82%E3%81%9D%E3%82%82%E3%82%BB%E3%82%B0%E3%83%A1%E3%83%B3%E3%83%86%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%A8%E3%81%AF)
*   [SEEMの概要](https://ai-data-base.com/archives/51873#SEEM%E3%81%AE%E6%A6%82%E8%A6%81)
*   [SEEMの特徴](https://ai-data-base.com/archives/51873#SEEM%E3%81%AE%E7%89%B9%E5%BE%B4)
    *   [1\. 柔軟性](https://ai-data-base.com/archives/51873#1_%E6%9F%94%E8%BB%9F%E6%80%A7)
    *   [2\. 組み合わせ性](https://ai-data-base.com/archives/51873#2_%E7%B5%84%E3%81%BF%E5%90%88%E3%82%8F%E3%81%9B%E6%80%A7)
    *   [3\. インタラクティビティ](https://ai-data-base.com/archives/51873#3_%E3%82%A4%E3%83%B3%E3%82%BF%E3%83%A9%E3%82%AF%E3%83%86%E3%82%A3%E3%83%93%E3%83%86%E3%82%A3)
    *   [4\. セマンティック認識](https://ai-data-base.com/archives/51873#4_%E3%82%BB%E3%83%9E%E3%83%B3%E3%83%86%E3%82%A3%E3%83%83%E3%82%AF%E8%AA%8D%E8%AD%98)
*   [Meta AIの「SAM」とSEEMの違い](https://ai-data-base.com/archives/51873#Meta_AI%E3%81%AE%E3%80%8CSAM%E3%80%8D%E3%81%A8SEEM%E3%81%AE%E9%81%95%E3%81%84)
    *   [プロンプトの種類と対応能力](https://ai-data-base.com/archives/51873#%E3%83%97%E3%83%AD%E3%83%B3%E3%83%97%E3%83%88%E3%81%AE%E7%A8%AE%E9%A1%9E%E3%81%A8%E5%AF%BE%E5%BF%9C%E8%83%BD%E5%8A%9B)
    *   [セマンティックな出力](https://ai-data-base.com/archives/51873#%E3%82%BB%E3%83%9E%E3%83%B3%E3%83%86%E3%82%A3%E3%83%83%E3%82%AF%E3%81%AA%E5%87%BA%E5%8A%9B)
    *   [インタラクションの幅](https://ai-data-base.com/archives/51873#%E3%82%A4%E3%83%B3%E3%82%BF%E3%83%A9%E3%82%AF%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E5%B9%85)
    *   [グランディング・セグメンテーション（テキストからのマスク生成）](https://ai-data-base.com/archives/51873#%E3%82%B0%E3%83%A9%E3%83%B3%E3%83%87%E3%82%A3%E3%83%B3%E3%82%B0%E3%83%BB%E3%82%BB%E3%82%B0%E3%83%A1%E3%83%B3%E3%83%86%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%EF%BC%88%E3%83%86%E3%82%AD%E3%82%B9%E3%83%88%E3%81%8B%E3%82%89%E3%81%AE%E3%83%9E%E3%82%B9%E3%82%AF%E7%94%9F%E6%88%90%EF%BC%89)
*   [SEEMの仕組み概要と実験](https://ai-data-base.com/archives/51873#SEEM%E3%81%AE%E4%BB%95%E7%B5%84%E3%81%BF%E6%A6%82%E8%A6%81%E3%81%A8%E5%AE%9F%E9%A8%93)
*   [SEEMの応用アイデア](https://ai-data-base.com/archives/51873#SEEM%E3%81%AE%E5%BF%9C%E7%94%A8%E3%82%A2%E3%82%A4%E3%83%87%E3%82%A2)
    *   [1\. 医療画像解析](https://ai-data-base.com/archives/51873#1_%E5%8C%BB%E7%99%82%E7%94%BB%E5%83%8F%E8%A7%A3%E6%9E%90)
    *   [2\. 自動運転技術](https://ai-data-base.com/archives/51873#2_%E8%87%AA%E5%8B%95%E9%81%8B%E8%BB%A2%E6%8A%80%E8%A1%93)
    *   [3\. 農業分野](https://ai-data-base.com/archives/51873#3_%E8%BE%B2%E6%A5%AD%E5%88%86%E9%87%8E)
    *   [4\. 遠隔教育やオンラインイベント](https://ai-data-base.com/archives/51873#4_%E9%81%A0%E9%9A%94%E6%95%99%E8%82%B2%E3%82%84%E3%82%AA%E3%83%B3%E3%83%A9%E3%82%A4%E3%83%B3%E3%82%A4%E3%83%99%E3%83%B3%E3%83%88)
*   [まとめ](https://ai-data-base.com/archives/51873#%E3%81%BE%E3%81%A8%E3%82%81)
*   [関連研究](https://ai-data-base.com/archives/51873#%E9%96%A2%E9%80%A3%E7%A0%94%E7%A9%B6)

## そもそもセグメンテーションとは

セグメンテーションとは、画像処理やコンピュータビジョンの分野で用いられる技術であり、画像内の各ピクセルに対して、それが属する物体やクラスにラベルを割り当てることを目的としています。要するに、「画像の中に何が写っているか」を認識するテクノロジーです。セグメンテーションは画像からの情報抽出や解析が容易に行えるため、さまざまなアプリケーションで利用されています。

セグメンテーションには、主に以下の2つのタイプがあります。

1.  **セマンティックセグメンテーション**：  
    セマンティックセグメンテーションでは、画像内の各ピクセルに対して、所属する物体クラス（例：人、犬、車）のラベルが割り当てられます。このタイプのセグメンテーションでは、同じクラスの物体が複数存在する場合でも、それらは区別されずに同一のラベルが割り当てられます。
2.  **インスタンスセグメンテーション**：  
    インスタンスセグメンテーションでは、画像内の各ピクセルに対して、所属する個別の物体インスタンス（例：人1、人2、犬1）のラベルが割り当てられます。このタイプのセグメンテーションでは、同じクラスの物体が複数存在する場合でも、それぞれ異なるラベルが割り当てられます。

セグメンテーション技術は、過去数十年間で大きく進化しました。古典的な画像処理手法から始まり、近年ではディープラーニングを利用した手法が主流となっています。ディープラーニングを用いたセグメンテーション手法は、高い精度で物体の境界を検出することができるため、自動運転、医療画像解析、ロボティクス、ビデオ編集など、幅広い分野で活用されています。

今回新たにMicrosoftが発表した「SEEM」は、さまざまなタイプのプロンプト（クリック、ボックス、ポリゴン、スクリブル、テキスト、参照画像など）を用いて、一つのモデルで画像セグメンテーションを行うことができる技術です。この技術は、大規模言語モデル（LLM）にインスパイアされた、ユニバーサルでインタラクティブなマルチモーダルインターフェイスを提供します。

![](https://ai-data-base.com/wp-content/uploads/2023/04/AIDB_51873_1-1024x338.jpg)

## SEEMの特徴

SEEMは以下の4つの特徴を持っています。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.