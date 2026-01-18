---
source_url: https://ai-data-base.com/archives/59713
captured_at: 2026-01-18T13:20:31.217Z
title: "「ChatGPTの1周年を記念して」、オープンソースLLMがChatGPTにどこまで追いついているか体系的調査報告 - AIDB"
category: "unknown"
is_premium: false
publish_date: 2025-03-08T21:10:01+09:00
conversion_method: Readability+Turndown
file_hash: fc9f736e5a3623fd
---

ChatGPTのリリースは、AI研究や商業分野における大きな転換点となりました。指示チューニング、ファインチューニング、そして人間のフィードバックからの強化学習などもあわせて、さまざまなタスクで能力を示してきました。

この成功に触発され、オープンソースLLMは急速に進化しています。

そこで研究者らは、ChatGPTのリリースから1年を振り返り、オープンソースLLMがどのように進化し、例えばどのようなタスクでChatGPTと競合するレベルに達しているかを調査しました。

本記事では調査報告内容を読んでいきます。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59713_thum2-1024x576.jpg)

**参照論文情報**

*   タイトル：ChatGPT’s One-year Anniversary: Are Open-Source Large Language Models Catching up?
*   著者：Hailin Chen, Fangkai Jiao, Xingxuan Li, Chengwei Qin, Mathieu Ravaut, Ruochen Zhao, Caiming Xiong, Shafiq Joty
*   所属：Nanyang Technological University, Salesforce Research, Institute of Infocomm Research (I2R) A∗STAR
*   URL：[https://doi.org/10.48550/arXiv.2311.16989](https://doi.org/10.48550/arXiv.2311.16989)

オープンソースの大規模言語モデル（LLM）は、AI研究と実用化の分野において大きく期待されています。そして、クローズドソースのLLMと同様に、さまざまな課題を解決する潜在能力を持っています。研究コミュニティでは、世界的に（組織横断的に）開発が進むようにLLMをオープンソースで公開することが文化として奨励される側面もあります。

現在ではオープンソースLLMは、クローズドなLLMに対して遅れをとっているという見方が一般的です。OpenAIのGPT-3.5（ChatGPT）やGPT-4、AnthropicのClaude、GoogleのBardなどに比べると、まだ性能が劣っていると考えられています。クローズドなモデルは、一般的にLLM分野でのリーダーと見なされており、2023年末の時点でGPT-4が最先端のモデルとされています。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59713_6-1-1024x538.png)

とはいえ、このギャップは徐々に狭まってきており、オープンソースLLMはある側面からクローズドなLLMに追いつく、あるいはそれを上回る可能性も高まっています。特定のタスクや応用分野において優れた性能を発揮する事例が出てきているためです。

**本記事の関連研究**：[Microsoftの研究者ら、比較的小さなサイズでもタスクによってはOpenAIのGPT-4を凌駕する言語モデル『Orca2』を開発](https://ai-data-base.com/archives/59349)

## オープンソースLLMの例

このセクションでは、論文において調査対象となったオープンソースのLLMから一例を紹介します。

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59713_2-1024x827.jpg)

### Llamaファミリーモデル

MetaによってリリースされたLlamaシリーズやその派生モデルは、オープンソースLLMにおける代表格です。

#### Llamaシリーズ

**Llama**: Llamaは、Metaによって開発されました。このモデルは、オープンソースLLMの分野で初期の基盤モデルとして位置づけられています。

**Llama-2**: Llama-2は、特に精度と多様なタスクにおけるパフォーマンスで知られており、具体的な応用例としては、医療分野でのRadiology-Llama-2モデルがChatGPTとGPT-4を上回る性能を示しています。

### 派生モデル

**Alpaca**、**Vicuna、Lima、Wizard**: Llamaを基にした指示データによるファインチューニングに焦点を当てています。

**MentalLlama**: MentalLlamaは、メンタルヘルス分野に特化したLlamaモデルの派生形態であり、精神科関連のデータセットで高い性能を発揮しています​​。

**関連記事：**[Metaが商用利用可能な大規模言語モデル「Llama 2」リリース　無料でブラウザから動かせるデモも続々登場](https://ai-data-base.com/archives/53657)

### その他の重要なモデル

他にも、Palm、Falcon、Lemurなどのモデルが調査対象として取り上げられています。

#### Palm

Googleによって開発されたPaLMおよびPaLM2は、Pathwaysを利用して言語モデリングをスケーリングし、新しいアプローチを提供しています。多様なタスクやデータセットでのモデリング能力において、先進的な性能を示しています。

#### Falcon

Falconは、強力な言語処理能力を持ち、特にロジカルリーズニングや長文コンテキストモデリングにおいて優れた性能を示しています。

#### Lemur

Lemurは、特にコーディング能力とエージェントタスクの実行能力において優れた結果を示しています。

**本記事の関連研究**：[オフラインで動作する様々なオープンソースLLMのインタフェース『GPT4All』が開発され公開](https://ai-data-base.com/archives/58916)

## 進歩のスピード

オープンソースLLMとクローズドなLLMの進歩のスピードに関して、論文は以下のように述べています。

### クローズドなLLMの継続的な更新

クローズドなLLM（例：ChatGPT）は定期的に新しいデータで再トレーニングされています。モデルは常に最新の知識と情報を反映するように更新され、性能の向上が図られています。

### オープンソースLLMの急速なリリース

一方で、オープンソースLLMはほぼ毎週のようにリリースされています。新しい技術やアプローチが迅速に採用され、進歩が促進されています。更新のスピードという観点から見れば、オープンソースLLMはクローズドなLLMよりも発展速度が急であると見ることができます。

**本記事の関連研究**：[約1.7万件におよぶLLM論文を調査した結果からわかる現在のLLM研究トレンド　arXiv運営のコーネル大より発表](https://ai-data-base.com/archives/58006)

## オープンソースLLMが現時点で優れているタスクの例

![](https://ai-data-base.com/wp-content/uploads/2023/12/AIDB_59713_1-1024x599.jpg)

オープンソースのLLMは、特定のタスクや応用分野において、クローズドソースLLMを上回る優れた性能を示しています。以下は、これらのLLMが現時点で特に優れているとされるタスクの例です。

プレミアム会員限定コンテンツです

閲覧には、アカウント作成後の決済が必要です。

*   全記事・論文コンテンツを無制限で閲覧可能
*   平日毎日更新、専門家による最新リサーチを配信

[プレミアム会員について](https://ai-data-base.com/premium-visitor)