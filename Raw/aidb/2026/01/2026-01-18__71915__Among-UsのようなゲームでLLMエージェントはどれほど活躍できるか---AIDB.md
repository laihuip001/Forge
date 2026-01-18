---
source_url: https://ai-data-base.com/archives/71915
captured_at: 2026-01-18T13:29:08.986Z
title: "Among UsのようなゲームでLLMエージェントはどれほど活躍できるか - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T19:25:11+09:00
conversion_method: Readability+Turndown
file_hash: 5cb91e438d521931
---

本記事では、LLMを用いた複雑なマルチエージェントゲーム環境の研究を紹介します。研究者らは「Among Us」をベースにした環境で、LLMエージェントの推論能力や戦略的思考を評価しました。また、エージェントのパーソナリティ（性格）などがゲームにもたらす影響も検証されました。

![](https://ai-data-base.com/wp-content/uploads/2024/07/AIDB_71915-1024x576.jpg)

**参照論文情報**

*   タイトル：AMONGAGENTS: Evaluating Large Language Models in the Interactive Text-Based Social Deduction Game
*   著者：Yizhou Chi, Lingjun Mao, Zineng Tang
*   所属：UC Berkeley, Tongji University

**本記事の関連研究**

*   [AIがAmong Us!でインポスターを当てるのは不可能ではない](https://ai-data-base.com/archives/49367)
*   [GPT-4、Bard、Claude2などの異なるLLMが円卓を囲み議論した結果の回答は品質が高いとの検証報告。円卓ツールも公開](https://ai-data-base.com/archives/55853)
*   [仮想の翻訳会社「TRANSAGENTS」に学ぶ　マルチLLMエージェントによる効果的な翻訳システム](https://ai-data-base.com/archives/70529)
*   [心の理論をLLMエージェントに実装することの効果](https://ai-data-base.com/archives/72954)

## 背景

これまで、複数のLLMをエージェントとして実行する実験において、人間のような社会的行動のシミュレーションが可能であることが示されてきました。

こうしたLLMの能力をより複雑な状況で試すため、研究者たちは「人狼」など言葉を駆使するゲームを用いた実験を行っています。曖昧な表現や相手を欺く発言など、人間でも判断が難しい言語使用が求められるのがゲームの特徴です。

しかし、これまでの研究では、単純な会話やゲーム内の単純な動きを超えた部分は十分に探求されていませんでした。そこで今回研究者らは、「Among Us」というゲームを題材に、「不完全な情報」や「多様な行動選択肢」がある中でのLLMの能力を検証することにしました。

Among Usは、戦略の立案、他プレイヤーの欺き、協力してタスクをこなすなど、複雑な要素を含む（非常に有名な）ゲームです。研究チームは、このゲームを模したテキストベースの環境「AMONGAGENTS」を開発し、LLMがゲームのルールを理解し、勝利を目指してどのように行動するかを観察しました。また、エージェントに異なる性格を与えたり、行動を計画する機能の有無を変えたりすることで、それらが性能にどう影響するかも調べました。

以下で全貌を詳しく紹介します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.