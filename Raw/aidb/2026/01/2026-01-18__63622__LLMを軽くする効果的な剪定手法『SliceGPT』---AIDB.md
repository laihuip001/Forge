---
source_url: https://ai-data-base.com/archives/63622
captured_at: 2026-01-18T13:22:44.505Z
title: "LLMを軽くする効果的な剪定手法『SliceGPT』 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:08:42+09:00
conversion_method: Readability+Turndown
file_hash: 6072f94e7a43071a
---

大規模言語モデル（LLM）のサイズを効率的に小さくする技術『SLICEGPT』が発表されました。

この技術は、モデルの重要でない部分を剪定（切り取り）することで、計算資源とメモリの使用量を減らしながらも、高い性能を維持するものです。

実験では巨大なモデルを最大30%圧縮でき、生成タスクや様々なダウンストリームタスクにおいて、元のモデルの性能の90%以上を維持することが可能だと示されました。

![](https://ai-data-base.com/wp-content/uploads/2024/02/AIDB_63622-1024x576.jpg)

**参照論文情報**

*   論文タイトル：SliceGPT: Compress Large Language Models by Deleting Rows and Columns
*   URL：[https://arxiv.org/abs/2401.15024](https://arxiv.org/abs/2401.15024)
*   機関：ETH Zurich, Microsoft Research, Microsoft
*   著者：Saleh Ashkboos, Maximilian L. Croci, Marcelo Gennari do Nascimento, Torsten Hoefler, James Hensman
*   コード：[https://github.com/microsoft/TransformerCompression](https://github.com/microsoft/TransformerCompression)

## 研究背景

LLMは、文章生成や翻訳など様々なタスクで高い能力を発揮しますが、サイズが巨大であるため、多くの計算資源とメモリを必要とするのが課題です。

そこで「基盤モデル」という考え方が注目されています。学習済みのLLMをベースに、それぞれのタスクに特化したモデルを構築することで、開発や計算のコストを削減する方法です。しかし、それでもまだ高額な費用がかかってしまうと言われています。複数の高性能コンピュータで何度もモデルを動かす度にコストは膨れ上がります。

そうした中、LLMの計算量を削減する「モデル圧縮」と呼ばれる技術が開発されています。モデル圧縮は、LLMのサイズを小さくすることで、必要な計算資源やメモリを減らすことができる技術です。

### モデル圧縮の4つの方法

モデル圧縮には、大きく4つの方法があります。

1.  知識蒸留：大きなモデルから小さなモデルへ知識を移転する方法
2.  テンソル分解：行列を複数の小さな行列に分解する方法
3.  剪定：不要なパラメータを削除する方法
4.  量子化：パラメータを低精度化する方法

今回、研究者らは3の剪定に着目し、これまでよりもさらに効果的な手法を開発することにしました。

### 剪定を改善したい

剪定自体はLLM以前から使用されてきた手法ですが、性能を維持するためには剪定後に再度微調整する必要があり、非常に手間がかかるという欠点がありました。

今回発表された「SliceGPT」は、従来の剪定法とは異なり、単一のGPUを使って数時間で巨大なモデルを圧縮でき、微調整を行わなくても下流タスクで高い性能を維持することができるものだと述べられています。

![](https://ai-data-base.com/wp-content/uploads/2024/02/AIDB_63622_8-1024x412.png)

**本記事の関連研究**：

*   [消費者向けGPUでも高性能GPUに近いパフォーマンスでLLMを動かす手法「PowerInfer」](https://ai-data-base.com/archives/61215)
*   [最高水準のオープンソースLLM『Mixtral 8x7B』は内部で専門家が切り替わる高効率モデル](https://ai-data-base.com/archives/62480)
*   [1.1Bパラメータの小さなモデルを巨大データ（約3兆トークン）で訓練したモデル『TinyLlama』が、比較的優秀な性能を発揮](https://ai-data-base.com/archives/61914)
*   [Appleが、LLMのパラメータを「SSDなどの外部フラッシュメモリに保存し」PCで効率的にモデルを使用する手法を開発](https://ai-data-base.com/archives/61006)　
*   [わずか2行のプロンプトでも実効性のある新しいアライメント手法『URIAL』](https://ai-data-base.com/archives/60678)

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)

Copyright © Parks, Inc. All rights reserved.