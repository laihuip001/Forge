---
source_url: https://ai-data-base.com/archives/67317
captured_at: 2026-01-18T13:25:04.300Z
title: "ChatGPTと実際に交わされた会話の世界最大規模データセット「WildChat」 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:27+09:00
conversion_method: Readability+Turndown
file_hash: 4c89825ae5f36bb2
---

コーネル大学などの研究者らは、ChatGPTを使って実際のユーザー対話ログを収集し、「WildChat」と名付けたデータセットを構築しました。66言語に及ぶ100万件以上の会話ターンが含まれます。

他の同様のデータセットと比べ、ユーザーの入力文が最も多様で、リアル（センシティブ）な内容も豊富に含まれている特徴を持ちます。さらにユーザーの10%以上が、ChatGPTを指示に従って「脱獄」させようとしていたことも判明しました。

※脱獄：言語モデルに、本来制限されている内容を出力させること。

研究者らは、WildChatを一般公開しています。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_67317-1024x576.jpg)

**参照論文情報**

*   タイトル：(InThe)WildChat: 570K ChatGPT Interaction Logs In The Wild
*   著者：Wenting Zhao, Xiang Ren, Jack Hessel, Claire Cardie, Yejin Choi, Yuntian Deng
*   所属：Cornell University, Allen Institute for Artificial Intelligence, University of Southern California, University of Washington

**本記事の関連研究**：

*   [大規模言語モデル（LLM）のこれまでとこれから③　-使用法・拡張法、データセット編-](https://ai-data-base.com/archives/64398)
*   [あらゆるLLMを「使い心地」基準でバトルさせる便利なプラットフォーム『Chatbot Arena：チャットボットアリーナ』](https://ai-data-base.com/archives/61080)
*   [外部からの攻撃で一度でも欺瞞を学んだLLMは現在の技術では完全回復が難しい](https://ai-data-base.com/archives/62695)
*   [ChatGPTを心理療法にもとづいて実行し、高い共感力と思いやりある会話をさせる手法『Chain of Empathy』と実行プロンプト](https://ai-data-base.com/archives/58847)

## 背景

LLMを使ったチャットボットが普及していますが、その開発には以下3つの段階があります。

1.  言語モデルの事前学習
2.  「指示調整データセット」を使った微調整
3.  人間のフィードバックを使った強化学習（※オプション）

このうち、指示調整データセットは、チャットボットの振る舞いを人間の好みに合わせるために不可欠です。上記のうち1と3は行わなくても2は実施するといったプロジェクトも多くなっています。

しかし、指示調整に活用できるデータは各機関の内部にあり、一般にはアクセスしにくいのが現状です。

ここで指示調整データには、大きく分けて2種類あります。

1.  自然な利用事例：実際のユーザーとチャットボットのやり取り
2.  専門家が作成したデータ：1回限りの会話が多い

ただし自然な利用事例は非公開のことが多く、専門家が作成したデータは実際の会話とは分布が異なる、といった課題があります。

そこで今回研究者らは、ChatGPTを使ったチャットボットを一般公開し、ユーザーの同意を得て会話ログを収集しました。こうして65万件以上の会話データからなる「WildChat」が誕生しました。チャットボットの利用実態の解明や、有害な利用法の研究、さらには言語モデルの追加学習にも役立つと期待されます。

以下で詳しく紹介します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.