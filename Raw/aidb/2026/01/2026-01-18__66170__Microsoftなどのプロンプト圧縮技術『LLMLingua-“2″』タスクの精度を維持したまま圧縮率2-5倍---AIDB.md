---
source_url: https://ai-data-base.com/archives/66170
captured_at: 2026-01-18T13:24:27.678Z
title: "Microsoftなどのプロンプト圧縮技術『LLMLingua-“2″』タスクの精度を維持したまま圧縮率2-5倍 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:30+09:00
conversion_method: Readability+Turndown
file_hash: e1f4cd1c25c9b94e
---

LLMにおける「タスクに依存しないプロンプト圧縮」についての研究が行われています。

既存の手法はプロンプト圧縮に必要な全ての重要な情報を捉えられない可能性があるため、最適な方法とは考えられていません。そこで今回Microsoftなどの研究者らは、プロンプト圧縮技術を新たに考案しました。

![](https://ai-data-base.com/wp-content/uploads/2024/03/AIDB_66170-1024x576.jpg)

**参照論文情報**

*   タイトル：LLMLingua-2: Data Distillation for Efficient and Faithful Task-Agnostic Prompt Compression
*   機関：清華大学、マイクロソフト
*   著者：Zhuoshi Pan, Qianhui Wu, Huiqiang Jiang, Menglin Xia, Xufang Luo, Jue Zhang, Qingwei Lin, Victor Rühle, Yuqing Yang, Chin-Yew Lin, H. Vicky Zhao, Lili Qiu, Dongmei Zhang

**本記事の関連研究**：

*   [ユーザープロンプトをLLMが言い換えて、LLM自身が理解しやすくする手法『RaR』](https://ai-data-base.com/archives/51160)
*   [LLMへの入力プロンプトを「意味を保持したまま」高度に圧縮する技術『LLMLingua』](https://ai-data-base.com/archives/60431)
*   [LLMの記号推論タスク（化学式や絵文字の理解など）で記号を自然言語に変換することの有効性を確認](https://ai-data-base.com/archives/65784)
*   [「人間の自然言語を超えて」LLMにタスク実行時の思考を非自然言語フォーマットで行わせるプロンプト手法『AutoForm（オートフォーム）』](https://ai-data-base.com/archives/65090)

## 背景

LLMにおける様々なプロンプティング技術が登場しています。例えばChain-of-Thought（CoT）などが代表的な例です。課題に対して適切なプロンプティング技術を使用することで、LLMは複雑なタスクを処理できることが分かってきました。

しかし工夫を凝らせば凝らすほど基本的にプロンプトの長さは増してきます。すると計算コストと金銭的コストの増加、およびLLMの情報認識能力の低下という問題が出てくることとなります。

そこで役立つ可能性があるのが、プロンプトの情報を失わずに短くすることを目指すプロンプト圧縮技術です。

これまでにもプロンプト圧縮手法はいくつか提案されてきました。主に特定のタスクやクエリに合わせて圧縮されたプロンプトを生成することを目的としたタスク依存型の手法によって、特に質問応答における下流のタスクでパフォーマンスが向上する結果が得られてきました。

しかし、タスク依存型の手法は、効率性や汎用性の面で理想的とは言えません。例えば、RAGのアプリケーションでは、タスク依存型のプロンプト圧縮を使用すると、関連するクエリに応じて同じ文書を複数回圧縮する必要が生じる問題があると報告されています。

今回研究者らは、汎用性と効率性を高めるために「自然言語には冗長性があり、LLMには冗長性が必ずしも必要ではない」という仮説からスタートすることにしました。その結果として、優秀な技術が開発されました。

以下で方法論や実験結果などを詳しく紹介します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.