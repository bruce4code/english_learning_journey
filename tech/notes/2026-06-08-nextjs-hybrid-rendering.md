# Next.js Hybrid Rendering & Performance Vocabulary

## Date
2026-06-08

## Category
Frontend Performance & Architecture

---

## 1. Original Text

> First off, that hybrid rendering model? Chef's kiss. Static Generation (SSG) for pages that don't change often (like your portfolio or docs) keeps load times snappy, while Server-Side Rendering (SSR) for dynamic content (user dashboards, real-time data) avoids that janky client-side fetch delay. I've seen projects where switching from pure client-side React to Next.js cut Time to Interactive (TTI) by 40%—crazy how much that matters for user retention.

---

## 2. Key Terms & Definitions

| Term | Pronunciation | Chinese | Definition |
|------|--------------|---------|---------|
| **Hybrid rendering** | /ˈhaɪ.brɪd ˈren.dər.ɪŋ/ | 混合渲染 | Using both SSG and SSR together |
| **Static Generation (SSG) | /ˈstæt.ɪk ˌdʒen.əˈreɪ.ʃən/ | 静态生成 | Pre-render pages at build time |
| **Server-Side Rendering (SSR) | /ˈsɜː.vər.saɪd ˈren.dər.ɪŋ/ | 服务端渲染 | Render pages on each request |
| **Load times** | /ləʊd taɪmz/ | 加载时间 | Time taken for a page to load |
| **Snappy** | /ˈsnæp.i/ | 快速的/轻快的 | Feeling fast and responsive |
| **Dynamic content** | /daɪˈnæm.ɪk ˈkɒn.tent/ | 动态内容 | Content that changes per user or frequently |
| **Janky** | /ˈdʒæŋ.ki/ | 卡顿的/不流畅的 | Slow, jerky, unresponsive |
| **Client-side fetch** | /ˈklaɪ.ən.t.saɪd fetʃ/ | 客户端获取 | Getting data in the browser |
| **Time to Interactive (TTI) | /taɪm tuː ˌɪn.tərˈæk.tɪv/ | 可交互时间 | How long until page becomes usable |
| **User retention** | /ˈjuː.zɚ rɪˈten.ʃən/ | 用户留存 | Keeping users on your site |

---

## 3. Hybrid Rendering Explained

### What is Hybrid Rendering?
A strategy that combines SSG and SSR in the same application, so you can:
- Use **Static Generation (SSG)** for:
  - Pages that don't change often (portfolio, docs, marketing pages)
  - ⚡ Keeps load times **snappy**

- Use **Server-Side Rendering (SSR)** for:
  - Dynamic pages that need fresh data per request (user dashboards, real-time data)
  - ⚡ Avoids that **janky** client-side fetch delay

---

## 4. Key Benefits

### 1. Static Generation (SSG)

**Pre-renders pages at build time
**
- **Fastest initial load
**- Pages are served as HTML
  - Static files stored on CDN
  - No server processing on each request
  - Great for docs, portfolios, landing pages
  - **Chef's kiss** = *slang* for "perfect, amazing
  - **Snappy** = fast and responsive

---

### 2. Server-Side Rendering (SSR)
**
Generates HTML at request time**
- Gets fresh data every time
**
** Good for user dashboards
**- No janky client-side fetch delays**
**- Works well with real-time data
**
---

### 3. Why This Matters for User Retention
The original text: "I've seen projects where switching from pure client-side React to Next.js cut Time to Interactive (TTI) by 40%—crazy how much that matters for user retention!"

Key idea:
**Slow TTI = users leave
**
- Before: Pure client-side React - users wait 10+ seconds?
- After: Next.js hybrid rendering - users can interact in ~4 seconds?
- 40% improvement = users stay longer!

---

## 5. Quick Reference Table

| Rendering | Best For | Why |
|----------|-----------|-----|
| **SSG** | Portfolio, docs, marketing pages | Pre-rendered once, blazing fast |
| **SSR** | User dashboards, real-time data | Fresh on every request |
| **Hybrid** | Mix both! | Get best of both worlds |

---

## 6. Example Sentences Using This Vocabulary

**Describing Performance**
- "Static Generation makes the page feel snappy!"
- "Server-Side Rendering avoids that janky client-side fetch."
- "We switched to Next.js and our TTI improved by 40%!"
- "Hybrid rendering is chef's kiss for user retention!"

---

## 7. Next.js-Specific Vocabulary

| Term | Meaning |
|------|---------|
| **Static Generation (SSG)** | Pre-render at build time |
| **Server-Side Rendering (SSR)** | Render on each request |
| **Incremental Static Regeneration (ISR)** | Update static pages without rebuild |
| **Time to Interactive (TTI)** | TTI = how soon user can click buttons |

---

## Tags

#tech-notes #frontend #nextjs #ssg #ssr #rendering #performance
