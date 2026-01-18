---
source_url: https://ai-data-base.com/archives/51944
captured_at: 2026-01-18T13:11:42.032Z
title: "Microsoft、人間とLLMとの効率的なコラボレーションを”ローコードLLM”で実現へ 論文から解説 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:11:31+09:00
conversion_method: Readability+Turndown
file_hash: c4da041e09ec9fd4
---

近年、大規模言語モデル(LLM: Large Language Models)は多くの分野で活用が進んでいます。しかし、これらのモデルを複雑なタスクに適用する際には、出力をコントロールすることが難しいという課題があります。

この記事では、Microsoftが発表した新たなフレームワークである「Low-code LLM」を紹介します。このフレームワークを用いることで、複雑なタスクにおいて大規模言語モデルをより効率的に活用できるようになります。

![](https://ai-data-base.com/wp-content/uploads/2023/04/AIDB_51944_top-1024x576.jpg)

**目次**[](https://ai-data-base.com/archives/51944#)

*   [Low-code LLMの概要](https://ai-data-base.com/archives/51944#Low-code_LLM%E3%81%AE%E6%A6%82%E8%A6%81)
    *   [「Planning LLM」モデルが活躍](https://ai-data-base.com/archives/51944#%E3%80%8CPlanning_LLM%E3%80%8D%E3%83%A2%E3%83%87%E3%83%AB%E3%81%8C%E6%B4%BB%E8%BA%8D)
    *   [Executing LLM](https://ai-data-base.com/archives/51944#Executing_LLM)
    *   [Low-code LLMの使用例](https://ai-data-base.com/archives/51944#Low-code_LLM%E3%81%AE%E4%BD%BF%E7%94%A8%E4%BE%8B)
*   [Low-code LLMの仕組み：ユーザー視点からの解説](https://ai-data-base.com/archives/51944#Low-code_LLM%E3%81%AE%E4%BB%95%E7%B5%84%E3%81%BF%EF%BC%9A%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E8%A6%96%E7%82%B9%E3%81%8B%E3%82%89%E3%81%AE%E8%A7%A3%E8%AA%AC)
*   [GitHubページの紹介：Low-code LLMプロジェクト](https://ai-data-base.com/archives/51944#GitHub%E3%83%9A%E3%83%BC%E3%82%B8%E3%81%AE%E7%B4%B9%E4%BB%8B%EF%BC%9ALow-code_LLM%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88)
    *   [ビデオデモ](https://ai-data-base.com/archives/51944#%E3%83%93%E3%83%87%E3%82%AA%E3%83%87%E3%83%A2)
    *   [クイックスタート](https://ai-data-base.com/archives/51944#%E3%82%AF%E3%82%A4%E3%83%83%E3%82%AF%E3%82%B9%E3%82%BF%E3%83%BC%E3%83%88)
*   [まとめ](https://ai-data-base.com/archives/51944#%E3%81%BE%E3%81%A8%E3%82%81)
*   [関連研究](https://ai-data-base.com/archives/51944#%E9%96%A2%E9%80%A3%E7%A0%94%E7%A9%B6)

## Low-code LLMの概要

Low-code LLMは、大規模言語モデルを使いこなすための革新的なフレームワークです。このフレームワークは、誰もが直感的に理解できる形式で、モデルの実行ロジックとワークフローを編集することができます。その結果、ユーザーは大規模言語モデルの出力を、自分の意図に沿った形で精密にコントロールできるようになります。

### 「Planning LLM」モデルが活躍

![](https://ai-data-base.com/wp-content/uploads/2023/04/AIDB_51944_5.png)

Low-code LLMの中核となるのが、「Planning LLM」という計画生成用の言語モデルです。

Planning LLMは、複雑なタスクに対して効果的に対応するために開発された特別な言語モデルです。このモデルは、タスクの分解と構造化された実施計画の作成を行うことができます。具体的には、次のような機能を持っています。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.