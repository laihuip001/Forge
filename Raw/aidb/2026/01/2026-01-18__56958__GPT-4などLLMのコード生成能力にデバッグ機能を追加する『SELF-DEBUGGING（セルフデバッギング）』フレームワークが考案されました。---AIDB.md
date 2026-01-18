---
source_url: https://ai-data-base.com/archives/56958
captured_at: 2026-01-18T13:33:33.662Z
title: "GPT-4などLLMのコード生成能力にデバッグ機能を追加する『SELF-DEBUGGING（セルフデバッギング）』フレームワークが考案されました。 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2023-10-26T14:09:10+09:00
conversion_method: Readability+Turndown
file_hash: 5242eea0de2bf268
---

追加訓練なしで、複数のベンチマークで優秀なパフォーマンスを達成しています。  
実行プロンプト例は比較的シンプルです。

DeepMindとUCバークレーの研究者らによる発表です。  
@ Xinyun Chen et al, “Teaching Large Language Models to Self-Debug”

![](https://ai-data-base.com/wp-content/uploads/2023/10/AIDB_X_20231017_2-709x1024.jpg)

LLMはコード生成においても優れた性能を示していますが、複雑なプログラミングタスクで一度に正確な解を生成するのは困難とも言われています。  
既存の研究はモデルの追加訓練を必要とするものが多くコストがかかります。

そんな中、研究者らはLLMが自ら生成したプログラムをデバッグする能力を教えるフレームワークを考案しました。

本稿は論文の簡単な紹介記事です。

## フレームワークの方法論

SELF-DEBUGGINGは以下3つのステップで構成されます。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.