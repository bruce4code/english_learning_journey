# 程序员学英语：关联学习法

## From UI Components to Tech Vocabulary

## Date
2026-06-08

## Category
Learning Methodology - English for Programmers

---

## Core Idea: 关联学习

通过前端程序员熟悉的 UI 组件库（Element Plus, Ant Design 等），
从一个组件名称出发，关联出 IT 领域相关的词汇和短语。

---

## Example: Cascader → Cascading

### Source: Element Plus Cascader
> "If the options have a clear hierarchical structure, Cascader can be used to view and select them."

### UI Component
- **Cascader** /ˈkæs.keɪ.dər/
- 级联选择器（UI 组件）
- Hierarchical selection UI component

### Associated Tech Terms

| Term | Pronunciation | Chinese | Meaning |
|------|---------------|---------|---------|
| **Cascading** | /ˈkæs.keɪ.dɪŋ/ | 级联的、层叠的 | The process of one thing triggering another |
| **Cascading failures** | /ˈkæs.keɪ.dɪŋ ˈfeɪ.ljərz/ | 级联故障 | One failure triggers a chain of failures |
| **Cascading Style Sheets (CSS)** | /ˈkæs.keɪ.dɪŋ staɪl ʃiːts/ | 层叠样式表 | Styles that cascade from parent to child |
| **Cascading updates** | /ˈkæs.keɪ.dɪŋ ʌpˈdeɪts/ | 级联更新 | Updating related records automatically |
| **Cascading delete** | /ˈkæs.keɪ.dɪŋ dɪˈliːt/ | 级联删除 | Deleting related records automatically |
| **Cascading dropdown** | /ˈkæs.keɪ.dɪŋ ˈdrɒp.daʊn/ | 级联下拉 | Dropdowns that change based on parent selection |
| **Cascading callbacks** | /ˈkæs.keɪ.dɪŋ ˈkɔːl.bæks/ | 级联回调 | Nested callback functions |
| **Cascade** | /kæsˈkeɪd/ | 瀑布/级联 | Waterfall; also used in waterfall model |

---

## How to Use This Method

### Step 1: Pick a UI Component
Open Element Plus, Ant Design, or any UI library you know.

### Step 2: Identify the Component Name
Example: `Cascader`, `Select`, `Tree`, `Table`, `Modal`, `Form`, `Dialog`, `Carousel`

### Step 3: Brainstorm Tech Terms Using the Same Word
Example: `Cascader` → `Cascading`, `Cascade`, `Cascading Style Sheets`, `Cascading failures`

### Step 4: Learn the Pronunciation and Meaning
Add pronunciation, Chinese meaning, and example sentences.

---

## More UI Component Examples

### 1. Select (选择器)

| Term | Meaning | Example |
|------|---------|---------|
| **Select** | 选择 | "Select all items" |
| **Select query** | 查询 | "SELECT * FROM users" |
| **Select all** | 全选 | "Press Ctrl+A to select all" |
| **Selection** | 选择 | "User selection" |
| **Selective** | 选择性的 | "Selective updates" |

### 2. Tree (树形控件)

| Term | Meaning | Example |
|------|---------|---------|
| **Tree** | 树 | "DOM tree" |
| **Tree structure** | 树形结构 | "File system tree structure" |
| **Tree traversal** | 树遍历 | "Pre-order tree traversal" |
| **Tree shaking** | 摇树优化 | "Tree shaking removes unused code" |
| **Decision tree** | 决策树 | "Machine learning decision tree" |
| **Tree view** | 树形视图 | "Git tree view" |

### 3. Table (表格)

| Term | Meaning | Example |
|------|---------|---------|
| **Table** | 表格 | "Database table" |
| **Table schema** | 表结构 | "CREATE TABLE users" |
| **Hash table** | 哈希表 | "Hash table lookup" |
| **Pivot table** | 透视表 | "Excel pivot table" |
| **Table of contents** | 目录 | "Table of contents" |

### 4. Form (表单)

| Term | Meaning | Example |
|------|---------|---------|
| **Form** | 表单 | "Login form" |
| **Form validation** | 表单验证 | "Form validation rules" |
| **Formal** | 正式的 | "Formal language" |
| **Format** | 格式 | "Date format" |
| **Formation** | 形成 | "Team formation" |
| **Reform** | 重构/改革 | "Code reform" |

### 5. Carousel (走马灯/轮播)

| Term | Meaning | Example |
|------|---------|---------|
| **Carousel** | 轮播 | "Image carousel" |
| **Carousel loop** | 轮播循环 | "Carousel auto-play loop" |
| **Carousel effect** | 轮播效果 | "Carousel slide effect" |
| **Carousel navigation** | 轮播导航 | "Carousel dots navigation" |

### 6. Modal (对话框)

| Term | Meaning | Example |
|------|---------|---------|
| **Modal** | 模态框 | "Modal dialog" |
| **Modal** | 模态的 | "Modal component" |
| **Modal** | 模式的 | "Modal verb" (grammar) |
| **Model** | 模型 | "Data model, AI model" |
| **Module** | 模块 | "ES module" |
| **Modular** | 模块化的 | "Modular design" |

---

## Vocabulary Root Expansion

### Common Tech Roots

| Root | Meaning | Tech Words |
|------|---------|------------|
| **Cascade** | 瀑布/级联 | Cascader, cascading, cascade delete |
| **Select** | 选择 | Select, selection, selective, select all |
| **Tree** | 树 | Tree, tree traversal, tree shaking, tree structure |
| **Table** | 表格 | Table, hash table, table schema, pivot table |
| **Form** | 形式/表单 | Form, format, formal, formation, reform |
| **Model** | 模型 | Model, modal, module, modular, modify |
| **Connect** | 连接 | Connect, connection, connector, disconnect |
| **Render** | 渲染 | Render, rendering, re-render, renderer |
| **Cache** | 缓存 | Cache, caching, cached, cache miss |
| **Load** | 加载 | Load, loading, loader, overload, download |
| **Queue** | 队列 | Queue, queuing, queue up, message queue |
| **Stack** | 栈 | Stack, stack overflow, full-stack, call stack |
| **Buffer** | 缓冲 | Buffer, buffering, buffer overflow |
| **Stream** | 流 | Stream, streaming, stream data, event stream |

---

## Example: From "Select" to SQL

```html
<!-- Element Plus Select Component -->
<el-select v-model="value">
  ❯ Select (选择)
    ❯ SELECT * FROM users (SQL查询)
    ❯ Selection (选择)
    ❯ Selective (有选择性的)
    ❯ Select all (全选)
```

### Complete Path

```
UI Component:  <el-select>  (Element Plus)
      ↓
SQL Keyword:   SELECT * FROM users
      ↓
Concept:       Selection, selective, select all
      ↓
Related:       React select, dropdown, option
      ↓
Grammar:       Select (verb) → Selection (noun) → Selective (adjective)
```

---

## Daily Practice Template

### Pick 3 Components Today

| Component | Associated Tech Terms | New Words Learned |
|-----------|----------------------|-------------------|
| `Cascader` | Cascading, CSS, cascade delete | /ˈkæs.keɪ.dɪŋ/ |
| `Select` | SELECT, selection, selective | /sɪˈlek.ʃən/ |
| `Tree` | Tree traversal, tree shaking | /træv.ər.səl/ |

---

## Tags

#learning-method #vocabulary #programmer-english #association #ui-components