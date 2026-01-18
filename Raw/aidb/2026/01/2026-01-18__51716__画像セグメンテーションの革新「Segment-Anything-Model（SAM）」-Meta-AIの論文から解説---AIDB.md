---
source_url: https://ai-data-base.com/archives/51716
captured_at: 2026-01-18T13:11:23.312Z
title: "画像セグメンテーションの革新「Segment Anything Model（SAM）」 Meta AIの論文から解説 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:11:32+09:00
conversion_method: Readability+Turndown
file_hash: e9f01f132a85e3ad
---

画像認識技術は急速に進化しており、最近ではファウンデーションモデル（汎用的な基盤モデル）の開発が注目を浴びています。今回、新たにMeta AIが画像セグメンテーションの分野においてもファウンデーションモデルの概念を取り入れたプロジェクトを発表しました。このプロジェクトは「Segment Anything」と名付けられ、プロンプタブル・セグメンテーション（プロンプトによるセグメンテーション）という新しいタスクやモデル「SAM」の開発、そして大規模なデータセット「SA-1B」の提供を通じて、画像セグメンテーションの分野に新たな道筋を示しています。

**参照論文情報**

*   タイトル：Segment Anything
*   著者：Alexander Kirillov, Eric Mintun, Nikhila Ravi, Hanzi Mao, Chloe Rolland, Laura Gustafson, Tete Xiao, Spencer Whitehead, Alexander C. Berg, Wan-Yen Lo, Piotr Dollár, Ross Girshick
*   URL：[10.48550/arXiv.2304.02643](https://doi.org/10.48550/arXiv.2304.02643)
*   プロジェクトページ：[segment-anything.com/](https://segment-anything.com/)

![](https://ai-data-base.com/wp-content/uploads/2023/04/AIDB51097_top_-1024x576.jpg)

**目次**[](https://ai-data-base.com/archives/51716#)

*   [画像セグメンテーションとは？](https://ai-data-base.com/archives/51716#%E7%94%BB%E5%83%8F%E3%82%BB%E3%82%B0%E3%83%A1%E3%83%B3%E3%83%86%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%A8%E3%81%AF%EF%BC%9F)
*   [プロンプタブル・セグメンテーションとは？](https://ai-data-base.com/archives/51716#%E3%83%97%E3%83%AD%E3%83%B3%E3%83%97%E3%82%BF%E3%83%96%E3%83%AB%E3%83%BB%E3%82%BB%E3%82%B0%E3%83%A1%E3%83%B3%E3%83%86%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%A8%E3%81%AF%EF%BC%9F)
*   [SA-1Bデータセットとは？](https://ai-data-base.com/archives/51716#SA-1B%E3%83%87%E3%83%BC%E3%82%BF%E3%82%BB%E3%83%83%E3%83%88%E3%81%A8%E3%81%AF%EF%BC%9F)
*   [SAMの実験結果と応用例](https://ai-data-base.com/archives/51716#SAM%E3%81%AE%E5%AE%9F%E9%A8%93%E7%B5%90%E6%9E%9C%E3%81%A8%E5%BF%9C%E7%94%A8%E4%BE%8B)
    *   [応用例1. 自動運転](https://ai-data-base.com/archives/51716#%E5%BF%9C%E7%94%A8%E4%BE%8B1_%E8%87%AA%E5%8B%95%E9%81%8B%E8%BB%A2)
    *   [応用例2. 医療](https://ai-data-base.com/archives/51716#%E5%BF%9C%E7%94%A8%E4%BE%8B2_%E5%8C%BB%E7%99%82)
    *   [応用例3. ウェアラブルデバイス、スマートフォンアプリ](https://ai-data-base.com/archives/51716#%E5%BF%9C%E7%94%A8%E4%BE%8B3_%E3%82%A6%E3%82%A7%E3%82%A2%E3%83%A9%E3%83%96%E3%83%AB%E3%83%87%E3%83%90%E3%82%A4%E3%82%B9%E3%80%81%E3%82%B9%E3%83%9E%E3%83%BC%E3%83%88%E3%83%95%E3%82%A9%E3%83%B3%E3%82%A2%E3%83%97%E3%83%AA)
    *   [応用例4. 環境・農業](https://ai-data-base.com/archives/51716#%E5%BF%9C%E7%94%A8%E4%BE%8B4_%E7%92%B0%E5%A2%83%E3%83%BB%E8%BE%B2%E6%A5%AD)
    *   [応用例5. 教育・研究](https://ai-data-base.com/archives/51716#%E5%BF%9C%E7%94%A8%E4%BE%8B5_%E6%95%99%E8%82%B2%E3%83%BB%E7%A0%94%E7%A9%B6)
*   [まとめ](https://ai-data-base.com/archives/51716#%E3%81%BE%E3%81%A8%E3%82%81)
*   [関連研究](https://ai-data-base.com/archives/51716#%E9%96%A2%E9%80%A3%E7%A0%94%E7%A9%B6)

## 画像セグメンテーションとは？

画像セグメンテーションとは、画像の中から特定の物体や領域を切り出す技術です。例えば、道路上の車や歩行者を認識する自動運転システムや、医療画像で病変部位を検出する診断支援システムなど、多くの応用例があります。従来の画像セグメンテーション手法は、特定のタスクやデータセットに対して最適化されているため、新しいタスクやドメインに適応させるには追加の学習が必要でした。しかし、この「Segment Anything」プロジェクトは、様々なタスクやドメインに対応できるよう設計された汎用的なモデルを提案しています。

## プロンプタブル・セグメンテーションとは？

プロンプタブル・セグメンテーションとは、プロンプト（手がかり）を与えることで、画像セグメンテーションを行うタスクです。例えば、物体の中心点や境界線上の点など、簡単なプロンプトを与えるだけで、モデルは画像から物体を切り出すことができます。この新しいタスクに対応するために開発されたモデルが「SAM」です。SAMは、大規模なデータセットで学習されることで、多様なタスクやドメインに対応できるように設計されています。また、テキストをプロンプトとして与えることで、自由な形式のテキストから物体をセグメントする能力も持っています。これにより、より高次元のタスクやシステムに組み込むことが可能となっています。

![](https://ai-data-base.com/wp-content/uploads/2023/04/AIDB51097_1.jpg)

SAMによるプロンプタブル・セグメンテーションで作成されるマスクの例

## SA-1Bデータセットとは？

このプロジェクトで提供されるSA-1Bデータセットは、10億以上のマスク（セグメンテーションされた物体領域）を含む大規模なデータセットです。これにより、SAMは多様な物体や状況に対応するための十分なデータを学習することができます。また、データセットにはさまざまな品質やバイアスが含まれており、これを利用してモデルの性能向上やタスク間の適応性を評価することができます。

研究者たちは、さまざまな実験を行い、SAMが従来の手法と比較して優れた性能を発揮していることを示しました。例えば、

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.