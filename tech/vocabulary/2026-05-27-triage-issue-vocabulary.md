# Issue Triage & Debugging Vocabulary

## Date
2026-05-27

## Category
Software Development & Technical Support

---

## Key Terms

### 1. Triage
- **Pronunciation**: /ˈtriː.ɑːʒ/ /ˈtraɪ.ɑːʒ/
- **Chinese Meaning**: 问题分级 / 分诊
- **Definition**: The process of prioritizing and categorizing issues based on urgency and impact.
- **Tech Context**: Used in bug tracking systems to decide which issues to address first.
- **Example Sentences**:
  - "We need to triage the new issues reported this morning."
  - "The bug is marked as P1 - highest priority in triage."
  - "Our team has a weekly triage meeting to prioritize work."
- **Related**: Priority, Severity, Urgency, Impact

### 2. Occur
- **Pronunciation**: /əˈkɜːr/
- **Chinese Meaning**: 发生 / 出现
- **Definition**: To happen or take place.
- **Tech Context**: Used to describe when an error, bug, or issue happens.
- **Example Sentences**:
  - "This issue occurs during the embedding model loading phase."
  - "The error occurs randomly on mobile devices."
  - "Performance degradation occurs after processing 1000+ requests."
- **Synonyms**: happens, takes place, arises, manifests
- **Common Phrases**: "occurs when", "occurs during", "occurs while"

### 3. Phase
- **Pronunciation**: /feɪz/
- **Chinese Meaning**: 阶段 / 时期
- **Definition**: A distinct stage or period in a process.
- **Tech Context**: Used to describe different stages of a program's execution.
- **Example Sentences**:
  - "The issue happens during the initialization phase."
  - "The data processing phase takes the longest time."
  - "We're entering the testing phase of the project."
- **Common Tech Phrases**:
  - initialization phase
  - loading phase
  - execution phase
  - shutdown phase
  - deployment phase

### 4. Embedding
- **Pronunciation**: /ɪmˈbedɪŋ/
- **Chinese Meaning**: 嵌入 / 向量嵌入
- **Definition**: A numerical representation of data (text, images) used in machine learning.
- **Tech Context**: Word embeddings, sentence embeddings, vector embeddings.
- **Example Sentences**:
  - "The model uses GPT embeddings for text processing."
  - "We're loading the embedding model at startup."
  - "Embedding generation is computationally expensive."
- **Note**: Correct spelling is "embedding" (double 'd'), NOT "embeding".

---

## Common Triage Priority Levels

| Priority | Name | Description | Example |
|----------|------|-------------|---------|
| P0 | Critical | System down, no workaround | Production outage |
| P1 | High | Major feature broken, workarounds exist | Payment system failing |
| P2 | Medium | Feature impaired, affects usability | UI glitches |
| P3 | Low | Cosmetic issues, minor problems | Typo in documentation |
| P4 | Trivial | Nice to have, low impact | Feature request |

---

## Issue Reporting Best Practices

**Good**:
```
Issue: Model loading fails during embedding initialization

Steps to reproduce:
1. Start the application
2. Attempt to load embedding model
3. See error: "Memory allocation failed"

Environment:
- OS: Ubuntu 22.04
- Python 3.10
- RAM: 8GB

Expected behavior: Model loads successfully
Actual behavior: Application crashes
```

**Common Phrases for Issue Reports**:
- "This issue occurs when..."
- "The problem happens during..."
- "The error manifests while..."
- "We observe this behavior in the [phase] phase"
- "This issue arises when..."

---

## Corrected Sentences

**Original**: "This issue occurs during loading embeding model phase?"

**Corrected**: "This issue occurs during the embedding model loading phase."

**Better variations**:
- "This issue occurs while loading the embedding model."
- "The problem happens during the embedding model loading phase."
- "We see this error when loading the embedding model."

---

## Review Schedule

- [ ] Day 1 review
- [ ] Day 3 review
- [ ] Day 7 review
- [ ] Day 14 review
- [ ] Day 30 review

## Tags

#tech-vocabulary #software-engineering #issue-tracking #triage #bug-reporting
