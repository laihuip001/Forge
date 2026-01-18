---
source_url: https://ai-data-base.com/archives/67755
captured_at: 2026-01-18T13:25:13.206Z
title: "LLMが思考のネットワークを構築し、人間の推論プロセスを模倣する『THOUGHTSCULPT』プロンプティング - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:26+09:00
conversion_method: Readability+Turndown
file_hash: 6ca8f367fd6fee3e
---

UCバークレーの研究者たちは、LLMがより効果的に情報を処理し、最適な解決策を導き出すための手法を考案しました。

問題解決の過程で中間修正や検索を行いながら解に辿り着くといった方法論です。

実験では、物語のアウトラインの改善、ミニクロスワードの解決、そして制約された生成という3つの難しいタスクで有効性が検証されました。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_67755-1024x576.jpg)

**参照論文情報**

*   タイトル：THOUGHTSCULPT: Reasoning with Intermediate Revision and Search
*   著者：Yizhou Chi, Kevin Yang, Dan Klein
*   所属：UC Berkeley

**本記事の関連研究**：

*   [LLMにタスクに応じた推論プロセスを自ら考えるようにするプロンプト手法『SELF-DISCOVER』Google DeepMindなどが開発](https://ai-data-base.com/archives/64136)
*   [LLMに敢えて間違わせてルールを覚えさせるプロンプト手法　Google DeepMindなどが考案](https://ai-data-base.com/archives/64057)
*   [LLMに非線形的な思考を与えてCoTを上回る性能を引き出す手法『IEP』と実行プロンプト　CoTと組合せでさらに強力になる場合も](https://ai-data-base.com/archives/57628)
*   [LLMにまず前提から尋ることで出力精度を向上させる『ステップバック・プロンプティング』と実行プロンプト](https://ai-data-base.com/archives/56671)

## 背景

LLMの性能は高いものの、同じタスクに対しても、プロンプトの与え方や指示の内容によって結果が大きく変わることが分かっています。代表的なものとして、Chain-of-Thought（CoT）や、Self-consistencyといった、LLMの推論能力を引き出すためのプロンプティング手法があります。  
CoTなどは、LLMに中間的な推論の過程を出力させることで、最終的な出力の質を向上させる手法です。しかし原理的に、初期段階で生成された回答に大きく精度が依存するという問題があります。つまり、途中で解決アプローチの根本的な修正や編集を行うわけではないのです。

そこで、Tree-of-Thoughts（ToT）やGraph-of-Thoughts（GoT）といった、LLMの推論過程をツリーやグラフ構造で表現する手法も提案されてました。異なる思考の経路を探索し、バックトラッキングやグラフ探索アルゴリズムを用いて、より良い出力を見つけるものです。  
しかし、ToTやGoTでも、中間段階での修正や編集は相変わらず難しいと考えられています。そのため、頻繁な修正や変更が必要な問題に対しては、新たな効果的な手法が求められています。

そこで今回研究者らは、THOUGHTSCULPTと呼ばれる新しいグラフベースの推論フレームワークを提案しました。LLMが思考のネットワークを構築し、人間の推論プロセスを模倣することを目指したものです。  
THOUGHTSCULPTの特徴は、”自己修正機構”です。思考ノードを生成しながら、以前の出力を繰り返し修正し、改善します。  
思考の評価、思考の生成、意思決定の3つのコアモジュールが連携することで、LLMの推論能力を引き出す手法と述べられています。

以下で詳細を説明します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.