---
source_url: https://ai-data-base.com/archives/68614
captured_at: 2026-01-18T13:25:49.862Z
title: "Apple開発のオープンソースLLM「OpenELM」 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:23+09:00
conversion_method: Readability+Turndown
file_hash: abc417d44992480d
---

Appleが公開した最新のオープンソース小型LLMに関する研究を紹介します。

OpenELMは、layer-wise scalingと呼ばれる手法を用いることで、限られたパラメータ数でも高い性能を達成しています。また、事前学習に使用したデータセットや学習の詳細、評価方法なども公開されており、透明性の高い研究となっています。

本記事では、OpenELMの特徴的なアーキテクチャ、事前学習の内容、評価実験の結果などを詳しく見ていきます。さらに、OpenELMをiPhoneやiPadなどのApple製品上で動作させるためのMLXライブラリへの変換手法についても触れていきます。

![](https://ai-data-base.com/wp-content/uploads/2024/05/AIDB_68614-1024x576.jpg)

**参照論文情報**

*   タイトル：OpenELM: An Efficient Language Model Family with Open Training and Inference Framework
*   著者：Sachin Mehta, Mohammad Hossein Sekhavat, Qingqing Cao, Maxwell Horton, Yanzi Jin, Chenfan Sun, Iman Mirzadeh, Mahyar Najibi, Dmitry Belenko, Peter Zatloukal, Mohammad Rastegari
*   所属：Apple

**本記事の関連研究**：

*   [Appleが開発　スマホに特化したマルチモーダルLLM『Ferret UI』](https://ai-data-base.com/archives/67840)
*   [Appleが開発、スマホのスクリーンを理解してユーザーと対話できる『ReALM』端末上で動く軽量モデル](https://ai-data-base.com/archives/66828)
*   [Appleが、LLMのパラメータを「SSDなどの外部フラッシュメモリに保存し」PCで効率的にモデルを使用する手法を開発](https://ai-data-base.com/archives/61006)　
*   [1.1Bパラメータの小さなモデルを巨大データ（約3兆トークン）で訓練したモデル『TinyLlama』が、比較的優秀な性能を発揮](https://ai-data-base.com/archives/61914)

## 背景

これまで、AppleがAIモデルをオープンに公開することはほとんどありませんでした。しかしこの度スタンスを一気に変え、オープンソースLLMの「OpenELM」を公開しました。Appleは今回の公開の目的を「オープンな研究コミュニティを支援し、発展させること」としています。

今回のリリースでは、以下のサイズのOpenELMが公開されました。

*   270M
*   450M
*   1.1B
*   3B

モデルは非常に軽量であり、iPhoneやiPad上でも動作できるとのことです。OpenELMは軽量でありながら、同程度のサイズのオープンLLMと比較して、高性能であることが分かります。

加えて、OpenELMをiPhoneやiPadなどのApple製品のローカル上で実行させるための「MLXライブラリへの変換コード」も公開されており、これを使うことでiPhoneやMac上でOpenELMを実行できます。

さらに、透明性を維持するために、OpenELMの学習にはおよそ1.8兆トークンのオープンデータが用いられ、学習スクリプトやログ等も公開されています。

次のセクションでは、OpenELMの具体的な構造を詳しく解説します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.