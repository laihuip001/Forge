---
source_url: https://ai-data-base.com/archives/79831
captured_at: 2026-01-18T13:31:34.060Z
title: "実際の企業データからなるtext-to-SQLベンチマーク「Spider 2.0」と専門エージェント『Spider-Agent』 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T19:24:48+09:00
conversion_method: Readability+Turndown
file_hash: bb08c22f287d9d7d
---

本記事では、LLMが実際の企業環境でSQL生成タスクにどの程度対応できるのかを検証した最新の研究を紹介します。

従来の研究では単純なデータベースを用いた実験で高い精度を達成していたLLMですが、実務レベルの複雑なデータベースやワークフローに対する性能は未知数でした。

今回研究者らは、Google AnalyticsやSalesforceなどの実際の企業データを用いた新しいベンチマーク「Spider 2.0」を開発し、それを通じてLLMの実用性における現状と課題を明らかにしました。さらに、SQL生成に特化した専門的なエージェントも設計しました。

![](https://ai-data-base.com/wp-content/uploads/2024/12/AIDB_79831-1024x576.jpg)

****発表者情報****

*   研究者：Fangyu Lei et al.
*   研究機関：University of Hong Kong, Salesforce Research, Sea AI Lab, Google DeepMind, Google Cloud AI Research, University of Waterloo

## 背景

大規模なデータ処理を必要とする現代において、人間とデータを効果的に橋渡しするコード生成技術が求められています。中でも、データベースに格納された膨大なデータにアクセスするためのインターフェースとしてSQLは欠かせない存在となっています。そこで、自然言語で指示をしてSQLを書く技術（text-to-SQL）は、日常的なクエリ作成を支援する有望な技術として注目されています。

text-to-SQLにおいてもLLMが役立っており、従来のベンチマークであるSpider 1.0で91.2%、BIRDで73.0%という高い実行精度を達成しています。

しかし、既存のベンチマークには現実世界のデータベース環境との大きな乖離があります。

1.  テーブルやカラムが少ない非実用的なデータベースを使用している
2.  各データベースシステム固有のSQL方言や機能への対応が不足している
3.  数千のカラムを持つ大規模なスキーマや複雑なネスト構造を持つ実際のデータベースの特徴を反映していない
4.  プロジェクトのコードベース活用、外部知識参照、複数ステップにわたるSQLクエリ構築など、実際のワークフローの複雑さを考慮していない

このような実際の企業環境とベンチマークとの乖離から、今回Googleなどの研究者らは、より現実的な企業レベルのベンチマークを開発することにしました。そして生まれたのがSpider 2.0です。

![](https://ai-data-base.com/wp-content/uploads/2024/12/AIDB_79831_f1-1024x378.png)

Spider 2.0によるLLMの評価フレームワークの概要図

また研究者らは、実際のエンタープライズ環境でのデータベース関連タスクに特化したSpider-Agentというエージェントフレームワークを設計しました。

## ベンチマーク構築

まずはタスクの定義、構築時の注釈付けパイプライン、Spider 2.0とSpider 2.0-liteのデータセット統計について説明します。

### タスク定義

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.