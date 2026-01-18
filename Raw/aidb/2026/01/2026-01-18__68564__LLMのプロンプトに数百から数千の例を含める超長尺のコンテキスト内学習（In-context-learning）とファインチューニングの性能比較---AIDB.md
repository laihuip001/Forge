---
source_url: https://ai-data-base.com/archives/68564
captured_at: 2026-01-18T13:25:46.847Z
title: "LLMのプロンプトに数百から数千の例を含める超長尺のコンテキスト内学習（In-context learning）とファインチューニングの性能比較 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:23+09:00
conversion_method: Readability+Turndown
file_hash: 600dbd8d28d2748b
---

LLMを利用する中でIn-context learning（ICL、コンテキスト内学習）が注目されています。モデルに例示を与えるだけで、追加の学習なしに様々なタスクをこなせるようにする手法です。

これまでコンテキスト内学習は、短いコンテキスト（入力の長さ）が前提となっており、利用できる例示の数が限られていました。ところが最近、超長尺のコンテキストを扱えるモデルが次々と開発され、状況は一変し、性能向上の可能性が広がりました。

そこで研究チームは、大規模なコンテキスト内学習の性能を評価し、特性を探ることに挑戦しています。

![](https://ai-data-base.com/wp-content/uploads/2024/05/AIDB_68564-1024x576.jpg)

**参照論文情報**

*   タイトル：In-Context Learning with Long-Context Models: An In-Depth Exploration
*   著者：Amanda Bertsch, Maor Ivgi, Uri Alon, Jonathan Berant, Matthew R. Gormley, Graham Neubig
*   所属：Carnegie Mellon University, Tel Aviv University

**本記事の関連研究**：

*   [プロンプトに例を多く載せるほど、どんなタスクでも性能が上がるのか？DeepMindによる『Many-shot Learning』の実験結果](https://ai-data-base.com/archives/67883)
*   [LLMにおける、長いコンテキストから欲しい情報を見つけ出す「needle-in-a-haystack（干し草の中の針）」テスト結果とプロンプト例](https://ai-data-base.com/archives/68016)
*   [Microsoftなどのプロンプト圧縮技術『LLMLingua-“2″』タスクの精度を維持したまま圧縮率2-5倍](https://ai-data-base.com/archives/66170)
*   [GPT-4やGeminiなどさまざまなLLMで、プロンプトの入力が長くなるにつれて推論性能に顕著な低下が見られる](https://ai-data-base.com/archives/64873)

## 背景

コンテキスト内学習とは、LLMに対して、タスクの例示をプロンプトとして与えることで、タスクを学習させる手法のことです。実装が簡単で計算コストが低く、汎用的なモデルを様々なタスクに適用できるため、近年注目を集めています。

しかし冒頭で述べた通り、これまでのコンテキスト内学習に関する研究の多くは、短いコンテキスト長（モデルが一度に処理できる入力の長さ）のモデルに焦点を当てており、例示の数が限られていました。そのため、コンテキスト内学習では大規模なデータを利用することができず、性能に限界がありました。

ところが最近では、極端に長いコンテキストウィンドウに適応できる言語モデルが次々と開発されています。大量のデータをコンテキスト内学習で直接利用できるようになり、ファインチューニング（モデルを追加学習させること）の代替手段としても期待されるようになりました。

そこで研究者らは、超長尺コンテキストでのコンテキスト内学習の性質や、大量のデータを用いた場合のコンテキスト内学習とファインチューニングの性能を比較することにしました。これまでほとんど理解されていなかった、大規模コンテキスト内学習の特性を明らかにしたいと考えています。

なお、これまでにもコンテキスト内学習の性質を調べた先行研究はいくつかあり、例示の選択戦略が重要であることや、コンテキスト内学習がタスク認識とタスク学習の2つのモードで機能しているという指摘などがされています。  
その中で、コンテキスト内学習とファインチューニングの比較は（実用上重要な意義があるにもかかわらず）あまり行われてきませんでした。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.