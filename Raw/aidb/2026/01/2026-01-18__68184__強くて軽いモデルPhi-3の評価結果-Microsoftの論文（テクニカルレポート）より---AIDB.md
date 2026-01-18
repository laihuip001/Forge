---
source_url: https://ai-data-base.com/archives/68184
captured_at: 2026-01-18T13:25:34.810Z
title: "強くて軽いモデルPhi-3の評価結果 Microsoftの論文（テクニカルレポート）より - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:07:25+09:00
conversion_method: Readability+Turndown
file_hash: a113a1144ec1f83c
---

Microsoftの研究者らは、モバイルデバイス上で動作可能なほど小型の言語モデル「phi-3-mini」を開発しました。3.8Bパラメータで、3.3兆トークンのデータで学習されています。驚くべきことに、phi-3-miniの性能は、GPT-3.5やMixtral 8x7Bといった大規模モデルに匹敵するレベルに達していると言います。

![](https://ai-data-base.com/wp-content/uploads/2024/04/AIDB_68184-1024x576.jpg)

**参照論文情報**

*   タイトル：Phi-3 Technical Report: A Highly Capable Language Model Locally on Your Phone
*   著者：Marah Abdin et al. （多数）
*   所属：Microsoft

**本記事の関連研究**：

*   [Microsoftなどのプロンプト圧縮技術『LLMLingua-“2″』タスクの精度を維持したまま圧縮率2-5倍](https://ai-data-base.com/archives/66170)
*   [Microsoftの研究者ら、比較的小さなサイズでもタスクによってはOpenAIのGPT-4を凌駕する言語モデル『Orca2』を開発](https://ai-data-base.com/archives/59349)
*   [1.1Bパラメータの小さなモデルを巨大データ（約3兆トークン）で訓練したモデル『TinyLlama』が、比較的優秀な性能を発揮](https://ai-data-base.com/archives/61914)
*   [Appleが開発、スマホのスクリーンを理解してユーザーと対話できる『ReALM』端末上で動く軽量モデル](https://ai-data-base.com/archives/66828)

phi-3-miniが高い性能を実現できた要因は、トレーニングデータにあると言います。研究者らは、以前のモデルphi-2の開発で使用したデータセットを拡張し、ウェブデータを厳選したものと、言語モデルが生成した合成データを組み合わせました。そうすることで、モデルサイズを小さく抑えながらも、大型モデルに匹敵する性能が得られたのです。

研究者らはまた、70億個と140億個のパラメータを持つモデル「phi-3-small」と「phi-3-medium」も開発しました。48兆トークンのデータで学習されており、phi-3-miniをさらに上回る性能を示しています。例えば、phi-3-smallとphi-3-mediumは、それぞれMMLU（多分野の知識テストベンチマーク）で75％と78％、MT-bench（会話で的確な返答ができるか評価するベンチマーク）で8.7と8.9を達成しています。

以下で論文（テクニカルレポート）をもとに、評価結果などを中心にPhi-3の詳細を紹介します。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.