---
source_url: https://ai-data-base.com/archives/63211
captured_at: 2026-01-18T13:22:31.481Z
title: "GPT-4レベルの質問応答タスク性能をオープンソースモデルのLlama 2で実現する「ChatQA」NVIDIAが開発 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:08:44+09:00
conversion_method: Readability+Turndown
file_hash: df75e8877cc06c76
---

NVIDIAの研究者らは、Llama-2などをベースに「ChatQA」という質問応答タスクに強いモデルを作成し、GPT-4と同等の精度を持つと報告しています。

指示チューニング（モデルをタスクに適応させること）を2段階で行うことにより、LLMの質問応答タスクのゼロショット性能が大幅に改善されるとのことです。

![](https://ai-data-base.com/wp-content/uploads/2024/01/AIDB_63211-1024x576.jpg)

**参照論文情報**

*   タイトル：ChatQA: Building GPT-4 Level Conversational QA Models
*   著者：Zihan Liu, Wei Ping, Rajarshi Roy, Peng Xu, Chankyu Lee, Mohammad Shoeybi, Bryan Catanzaro
*   所属：NVIDIA
*   URL：[https://doi.org/10.48550/arXiv.2401.10225](https://doi.org/10.48550/arXiv.2401.10225)

**本記事の関連研究**：

*   [Microsoftの研究者ら、比較的小さなサイズでもタスクによってはOpenAIのGPT-4を凌駕する言語モデル『Orca2』を開発](https://ai-data-base.com/archives/59349)
*   [1.1Bパラメータの小さなモデルを巨大データ（約3兆トークン）で訓練したモデル『TinyLlama』が、比較的優秀な性能を発揮](https://ai-data-base.com/archives/61914)
*   [オープンソースLLMのMixtral 8x7B　GPT-3.5に匹敵する性能を示す高効率モデル](https://ai-data-base.com/archives/62480)
*   [人間のカリキュラム教育のような学習でLLMの性能は向上するとの報告](https://ai-data-base.com/archives/61555)

## 研究背景

質問応答はLLMのアプリケーション（例えばChatGPT）で最も好まれている使い方の一つです。GPT-4をはじめとしたLLMは質問応答タスクに秀でており、さまざまな製品開発や研究に大きな影響を与えています。

モデルの質問応答能力には以下の要素が大事だと考えられています。

*   会話形式で直接やりとりできる
*   特定のデータセットに依存していない
*   様々な分野に対応できる
*   ゼロショットで回答を生成できる
*   長文のドキュメントを参照できる
*   RAGに対応している（情報を検索して統合できる）

質問応答能力で最も強いモデルであるGPT-4はクローズドな商用モデルであり、匹敵するほど精度の高いモデルを手元で構築できるノウハウが求められています。

そのような背景の中、NVIDIAの研究者らはLLMがゼロショットで会話型の質問応答タスクを行う能力を向上させるため、2段階の指示チューニング手法とデータ収集の方法論を編み出しました。

そして、その方法論に基づいて「ChatQAモデル」ファミリーを構築し、最先端のモデルと比較して結果を報告しています。

![](https://ai-data-base.com/wp-content/uploads/2024/01/AIDB_63211_1-1024x292.png)

下記では手法の概要、実験結果などを紹介します。

## 方法論

今回研究者らは、

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.