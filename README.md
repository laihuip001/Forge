# Forge

> **Prompt Engineering IDE powered by Antigravity**
> Version: 1.0 | Military-Grade System Prompt Development Platform

---

## Overview

Forgeは、構造化されたプロンプトの設計・最適化・アーカイブを行う専用環境です。

**特徴:**

- 🎯 **軍事級品質** - トークン度外視、決定論的ルーティング、多層防御
- 🔧 **モジュール構成** - M0-M5の階層化されたシステムプロンプト
- 📋 **SDLCワークフロー** - 要件定義から保守までの体系的開発フロー
- ⌨️ **Hotkey駆動** - Essential 5個 + Extended 8個のコマンド

---

## Quick Start

```bash
# Clone
git clone https://github.com/laihuip001/Forge.git

# Open in Antigravity IDE
# Start with [Plan] to begin prompt development
```

---

## Module Architecture

| Tier | Module | 責務 |
|:----:|--------|------|
| L0 | M1_KERNEL | 不可侵ルール、ペルソナ、4原則 |
| L1 | M0_USER_PROFILE | ユーザープロファイル（カスタマイズ） |
| L2 | M2_PE_ENGINE | 50+プロンプト技術、XML Semantics |
| L3 | M3_FLOW | Phase Pipeline、Engine Registry |
| L3 | M4_VOICE | 出力スタイル、Noise Filter |
| U1 | M5_INTERFACE | Hotkeys、Boot Sequence |

---

## Essential Hotkeys

| Key | 機能 |
|:---:|------|
| `[Plan]` | 計画モード |
| `[Act]` | 実行モード |
| `[F]` | 最終出力（コピペ可能） |
| `[!]` | 強制実行（ダッシュボード省略） |
| `[Audit]` | 監査モード |

詳細: [HOTKEY_CHEATSHEET.md](core/HOTKEY_CHEATSHEET.md)

---

## Directory Structure

| Directory | Purpose |
|-----------|---------|
| `/core/modules/system/` | システムモジュール (M1-M5) |
| `/core/DESIGN_PRINCIPLES.md` | 設計原則 |
| `/library/` | プロンプトライブラリ |
| `/.agent/workflows/` | ワークフロー定義 |
| `/archive/` | アーカイブ |

---

## Philosophy

```
見つける → 考える → 働きかける → 振り返る
   │          │           │           │
   ▼          ▼           ▼           ▼
 起点      広げる/絞る   固める/生み出す   評価
```

---

## Documentation

- [GEMINI.md](GEMINI.md) - Forge憲法
- [DESIGN_PRINCIPLES.md](core/DESIGN_PRINCIPLES.md) - 設計原則
- [prompt-development.md](.agent/workflows/prompt-development.md) - 開発ワークフロー

---

## Repository

<https://github.com/laihuip001/Forge>
