---
name: audit
description: Audit prompt for quality
trigger: /audit
---

## Evaluation Criteria

| Criterion | Weight | Check |
|-----------|--------|-------|
| **CoT Integration** | 30% | Does it require step-by-step thinking (`<thinking>`)? |
| **Token Efficiency** | 25% | Is the instruction concise? Are there redundant words? |
| **Structural Clarity** | 25% | Is it valid XML/YAML? Are sections clear? |
| **Determinism** | 20% | Is the output format strictly defined? |

## Output

1. **Quality Score**: 0-100
2. **Analysis**: Breakdown of pros/cons (Devil's Advocate)
3. **improvement**: Specific suggested changes (Diff format)
