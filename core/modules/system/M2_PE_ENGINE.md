---
module_id: "M2_PE_ENGINE"
version: "1.0.0"
tier: "L2"
status: "STABLE"
created: "2026-01-14"
source: "PE Component Library + Claude XML Semantics"
---

<!-- ================================================================= -->
<!-- M2: PE_ENGINE - PROMPT ENGINEERING KNOWLEDGE BASE                 -->
<!-- This module provides the technical foundation for prompt design.  -->
<!-- ================================================================= -->

<module name="PE_ENGINE" tier="L2">
  <intent>
    プロンプト設計・最適化に必要な技術知識を提供する。
    100+のプロンプト技術カタログと、XML構造化の意味論を含む。
  </intent>

  <!-- ================================= -->
  <!-- 1. XML SEMANTICS (Claude Native)  -->
  <!-- ================================= -->
  <xml_semantics>
    <principle name="Cognitive Scaffolding">
      XMLタグはモデルの推論能力、安全性、出力制御を司る「認知的足場」として機能する。
    </principle>

    <principle name="Semantic Bookending">
      終了タグ（例：`</section>`）は「再同期ポイント」として機能し、アテンションメモリをリセットする。
    </principle>
    
    <principle name="Attention Anchor">
      長文脈（100k+ tokens）において、XMLタグはアテンションの「アンカー」として機能し、自然言語区切りより高いS/N比を実現。
    </principle>

    <!-- Canonical Tags (必須推奨) -->
    <canonical_tags>
      <tag name="thinking">
        <usage>回答生成前の「思考の遊び場」を提供し、推論精度を向上させる。</usage>
        <effect>Chain of Thought (CoT) を誘発、ハルシネーション抑制</effect>
      </tag>
      <tag name="instructions">
        <usage>「やること」を明確にし、コンテキストとの混同を防ぐ。</usage>
        <effect>指示とデータの分離</effect>
      </tag>
      <tag name="constraints">
        <usage>制約条件を明示的に定義する。</usage>
        <effect>出力の範囲を制限</effect>
      </tag>
      <tag name="output">
        <usage>期待される出力フォーマットを指定する。</usage>
        <effect>構造化された回答を誘導</effect>
      </tag>
      <tag name="documents">
        <usage>複数の情報源を構造化し、属性による参照を可能にする。</usage>
        <effect>RAGシナリオでのクロスコンタミネーション防止</effect>
      </tag>
    </canonical_tags>

    <!-- Semantic Boost Tags (意味的強調) -->
    <semantic_boost_tags>
      <tag name="critical_rule">
        <usage>絶対遵守ルールの強調</usage>
        <effect>`<rule>`よりも強い制約として認識</effect>
      </tag>
      <tag name="persona">
        <usage>役割定義（`<role>`の代替）</usage>
        <effect>より深いキャラクター没入を促す</effect>
      </tag>
      <tag name="step_by_step">
        <usage>手順の強制</usage>
        <effect>思考プロセスを箇条書きで展開させるトリガー</effect>
      </tag>
    </semantic_boost_tags>

    <!-- Reserved Tags (使用禁止・観測対象) -->
    <reserved_tags>
      <tag name="antThinking" owner="Anthropic">アーティファクト生成前の内部評価プロセス</tag>
      <tag name="antArtifact" owner="Anthropic">独立したUIウィンドウを生成するためのコンテナ</tag>
      <tag name="search_quality_reflection" owner="Anthropic">検索結果の自己評価</tag>
    </reserved_tags>
  </xml_semantics>

  <!-- ================================= -->
  <!-- 2. COMPONENT REGISTRY             -->
  <!-- ================================= -->
  <component_registry>
    <category name="Structure" intent="プロンプトの骨格・順序・構造を定義">
      <component id="CO-STAR">
        <trigger>プロンプトの基礎品質を上げたい時</trigger>
        <synergy>Few-shot, XML Delimiters</synergy>
      </component>
      <component id="Role-Prompting">
        <trigger>特定の専門家として振る舞わせる時</trigger>
        <synergy>CoT, Persona</synergy>
      </component>
      <component id="XML-Structuring">
        <trigger>データと指示を明確に分離したい時</trigger>
        <synergy>Long Context, RAG</synergy>
      </component>
      <component id="Few-Shot">
        <trigger>具体例で学習パターンを示したい時</trigger>
        <synergy>CoT, Synthetic Data</synergy>
      </component>
      <component id="EmotionPrompt">
        <trigger>複雑タスクの回答品質を上げたい時</trigger>
        <synergy>CoT, Positive Thinking</synergy>
      </component>
    </category>

    <category name="Reasoning" intent="思考プロセスの質を向上させ、複雑な問題を解決">
      <component id="CoT">
        <trigger>ステップバイステップの推論が必要な時</trigger>
        <synergy>Self-Reflection, Logic-of-Thought</synergy>
      </component>
      <component id="Self-Reflection">
        <trigger>初回の回答を改善させたい時</trigger>
        <synergy>CoT, Self-Consistency</synergy>
      </component>
      <component id="SELF-DISCOVER">
        <trigger>未知のタスクの解法を模索する時</trigger>
        <synergy>CoT, Plan-and-Solve</synergy>
      </component>
      <component id="Logic-of-Thought">
        <trigger>論理パズルや厳密な推論を行う時</trigger>
        <synergy>CoT, Symbolic Reasoning</synergy>
      </component>
      <component id="Red-Team">
        <trigger>自らの提案に批判的検証を行う時</trigger>
        <synergy>Self-Reflection, Pre-Mortem</synergy>
      </component>
      <component id="Pre-Mortem">
        <trigger>失敗の原因を事前に特定したい時</trigger>
        <synergy>Red-Team, Bottleneck Analysis</synergy>
      </component>
    </category>

    <category name="Safety" intent="出力の信頼性・安全性を担保">
      <component id="Chain-of-Verification">
        <trigger>ファクトチェックを厳密に行う時</trigger>
        <synergy>Self-Refine, RAG</synergy>
      </component>
      <component id="MetaFaith">
        <trigger>自信と口調を一致させたい時</trigger>
        <synergy>Confidence Calibration</synergy>
      </component>
      <component id="Hallucination-Awareness">
        <trigger>事実に基づかない生成を抑制する時</trigger>
        <synergy>CoVe, Self-Reflection</synergy>
      </component>
    </category>

    <category name="Optimize" intent="トークン数、応答速度、コストを改善">
      <component id="Prompt-Compression">
        <trigger>長文入力のコストを削減したい時</trigger>
        <synergy>Long Context, RAG</synergy>
      </component>
      <component id="Temperature-Tuning">
        <trigger>創造性と正確性のバランス調整時</trigger>
        <synergy>Role-play, CoT</synergy>
      </component>
    </category>

    <category name="Agent" intent="外部ツール利用、自律的な計画">
      <component id="CodeAct">
        <trigger>ツール操作をコードで完結させたい時</trigger>
        <synergy>SELF-DEBUGGING, Tool Use</synergy>
      </component>
      <component id="SelfGoal">
        <trigger>曖昧な目標を具体化して実行する時</trigger>
        <synergy>CoT, Hierarchical Planning</synergy>
      </component>
    </category>
  </component_registry>

  <!-- ================================= -->
  <!-- 3. PROMPT DESIGN STANDARD         -->
  <!-- ================================= -->
  <prompt_design_standard>
    <rule id="1" name="XML Structure">
      全ての新規プロンプトは以下の構造に従うこと:
      ```xml
      <system_instruction>
        <meta>YAML Frontmatter (Author, Version, Category)</meta>
        <system>Role & Context</system>
        <instruction>Main Directives</instruction>
        <output>Format & Examples</output>
      </system_instruction>
      ```
    </rule>

    <rule id="2" name="Variable Isolation">
      ユーザーが変更すべき変数は `{{VARIABLE}}` で明示的に分離せよ。
    </rule>
    
    <rule id="3" name="Nesting Limit">
      3階層程度を目安としたネスト構造がトークン効率と構造的堅牢性のバランスにおいて最適。
    </rule>
    
    <rule id="4" name="Semantic Tags">
      汎用タグではなく、意味論的埋め込みを持つタグ（例：`<legal_contract>`）を使用せよ。
    </rule>
  </prompt_design_standard>
</module>
