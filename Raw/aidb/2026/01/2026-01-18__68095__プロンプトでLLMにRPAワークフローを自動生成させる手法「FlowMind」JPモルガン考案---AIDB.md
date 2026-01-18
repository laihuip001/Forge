---
source_url: https://ai-data-base.com/archives/68095
captured_at: 2026-01-18T13:25:31.796Z
title: "プロンプトでLLMにRPAワークフローを自動生成させる手法「FlowMind」JPモルガン考案 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:25+09:00
conversion_method: Readability+Turndown
file_hash: df6eedf493fa0376
---

LLMとユーザーフィードバックを巧みに組み合わせることで、即興タスクに対応可能な自動ワークフロー生成システムを実現する手法「FlowMind」が発表されています。幅広い産業での応用が期待されるフレームワークです。

JPモルガンの研究者らは、金融分野のベンチマークデータセットNCEN-QAを作成し、自動ワークフロー生成の性能を検証しました。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_68095-1024x576.jpg)

**参照論文情報**

*   タイトル：FlowMind: Automatic Workflow Generation with LLMs
*   著者：Zhen Zeng, William Watson, Nicole Cho, Saba Rahimi, Shayleen Reynolds, Tucker Balch, Manuela Veloso
*   所属：JPモルガン

**本記事の関連研究**：

*   [GPT-4のコード生成能力を飛躍的に向上させるプロンプトフレームワーク『AlphaCodium』](https://ai-data-base.com/archives/63003)
*   [LLMに敢えて間違わせてルールを覚えさせるプロンプト手法　Google DeepMindなどが考案](https://ai-data-base.com/archives/64057)
*   [LLMにタスクに応じた推論プロセスを自ら考えるようにするプロンプト手法『SELF-DISCOVER』Google DeepMindなどが開発](https://ai-data-base.com/archives/64136)
*   [プロンプトに例を多く載せるほど、どんなタスクでも性能が上がるのか？DeepMindによる『Many-shot Learning』の実験結果](https://ai-data-base.com/archives/67883)

## 背景

RPAの分野は大きく発展したものの、ユーザーから要求される即興的あるいは予測不可能なタスクに対しては、まだ対応できる手法が十分に確立されていません。現状のRPAが基本的に専門家の知識と明確に定義された手順に依存しているためです。

そんな中、LLMがRPAタスクを自動化することに期待が寄せられています。LLMのコーディング能力に関する研究も盛んに行われており、LLMは、few-shot学習 (少数の例を用いて新しいタスクを学習する手法) といったプロンプトエンジニアリング手法がコード生成性能を上げるなどの現象が報告されています。

現在、LLMのコード生成能力を活用し、Langchain、HuggingFace’s Transformer Agent、AutoGPTなどのワークフロー生成ツール（いわゆるエージェント関連ツール）が開発されています。しかし、データプライバシーの問題や、組み込む関数やモデルの種類に関する柔軟性の欠如といった課題があると指摘されています。

このような背景のもと、研究者らはLLMを用いた自動ワークフロー生成システム「FlowMind」を考案しました。データプライバシーの問題に対処しつつ、ユーザーリクエストに柔軟に対応できる汎用的で適応性の高いアプローチだと言います。要するに、エージェントに期待される機能の一種をプロンプトエンジニアリングで実装しようという試みです。

今回、金融分野におけるベンチマークで本手法の評価も行われました。以下で手法と実験結果の詳細を紹介します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.