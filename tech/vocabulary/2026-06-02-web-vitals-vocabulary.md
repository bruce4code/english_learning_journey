# Web Performance Metrics Vocabulary

## Date
2026-06-02

## Category
Frontend Performance

---

## Core Web Vitals Terminology

### 1. LCP (Largest Contentful Paint)
- **Pronunciation**: /ˈlɑːrdʒɪst kənˈtentfəl peɪnt/
- **Chinese Meaning**: 最大内容绘制
- **Definition**: Time when the largest visible element fully renders.
- **Example**: "We reduced LCP from 4.1s to 1.9s by optimizing images."

### 2. INP (Interaction to Next Paint)
- **Pronunciation**: /ˌɪntərˈækʃən tə nekst peɪnt/
- **Chinese Meaning**: 交互到下次绘制
- **Definition**: Time between user interaction and visual response.
- **Example**: "INP replaced FID in 2024 as the main responsiveness metric."

### 3. CLS (Cumulative Layout Shift)
- **Pronunciation**: /ˈkjuːmjələtɪv ˈleɪaʊt ʃɪft/
- **Chinese Meaning**: 累积布局偏移
- **Definition**: Score measuring unexpected visual movement of elements.
- **Example**: "Adding width and height to images fixed our CLS issues."

### 4. FCP (First Contentful Paint)
- **Pronunciation**: /fɜːrst ˈkɒntentfəl peɪnt/
- **Chinese Meaning**: 首次内容绘制
- **Definition**: Time when the first piece of content appears on screen.
- **Example**: "FCP should be under 1.8 seconds for a good user experience."

### 5. TTFB (Time to First Byte)
- **Pronunciation**: /taɪm tə fɜːrst baɪt/
- **Chinese Meaning**: 首字节时间
- **Definition**: Time between request and first byte of response from server.
- **Example**: "A CDN can significantly improve TTFB."

### 6. TBT (Total Blocking Time)
- **Pronunciation**: /ˈtəʊtl ˈblɒkɪŋ taɪm/
- **Chinese Meaning**: 总阻塞时间
- **Definition**: Time the main thread is blocked between FCP and TTI.
- **Example**: "High TBT directly causes poor INP scores."

---

## Other Key Terms

| Term | Pronunciation | Chinese Meaning |
|------|---------------|-----------------|
| **CRP** (Critical Rendering Path) | /ˈkrɪtɪkl ˈrendərɪŋ pɑːθ/ | 关键渲染路径 |
| **DOM** (Document Object Model) | /ˈdɒkjʊmənt ˈɒbdʒɪkt ˈmɒdl/ | 文档对象模型 |
| **CSSOM** (CSS Object Model) | /ˈsiː-es-es əʊ-em/ | CSS 对象模型 |
| **Rendering Blocking** | /ˈrendərɪŋ ˈblɒkɪŋ/ | 渲染阻塞 |
| **Code Splitting** | /kəʊd ˈsplɪtɪŋ/ | 代码分割 |
| **Tree Shaking** | /triː ˈʃeɪkɪŋ/ | 摇树优化 |
| **Lazy Loading** | /ˈleɪzi ˈləʊdɪŋ/ | 懒加载 |
| **Cache** | /kæʃ/ | 缓存 |
| **CDN** (Content Delivery Network) | /ˈkɒntent dɪˈlɪvəri ˈnetwɜːk/ | 内容分发网络 |
| **Preconnect** | /priːˈkɒnekt/ | 预连接 |
| **Preload** | /priːˈləʊd/ | 预加载 |
| **Prefetch** | /priːˈfetʃ/ | 预获取 |
| **Bundle Size** | /ˈbʌndl saɪz/ | 打包体积 |
| **Main Thread** | /meɪn θred/ | 主线程 |
| **Event Listener** | /ɪˈvent ˈlɪsənər/ | 事件监听器 |

---

## Optimization Vocabulary

### Adjectives
| Word | Meaning | Example |
|------|---------|---------|
| **Render-blocking** | 渲染阻塞的 | "Render-blocking resources delay LCP." |
| **Deferred** | 延迟的 | "Deferred scripts load after HTML parsing." |
| **Asynchronous** | 异步的 | "Async scripts don't block rendering." |
| **Minified** | 压缩的 | "Minified CSS files are smaller and faster." |
| **Cached** | 缓存的 | "Cached responses improve TTFB." |
| **Lazy-loaded** | 懒加载的 | "Lazy-loaded images reduce initial load." |

### Verbs
| Word | Meaning | Example |
|------|---------|---------|
| **Optimize** | 优化 | "Optimize images before deploying." |
| **Minify** | 压缩 | "Minify JS and CSS for production." |
| **Compress** | 压缩 | "Compress assets to reduce file size." |
| **Defer** | 延迟 | "Defer non-critical scripts." |
| **Inline** | 内联 | "Inline critical CSS for faster rendering." |
| **Split** | 拆分 | "Split code into smaller bundles." |

### Performance Impact Verbs
| Verb | Impact | Example |
|------|--------|---------|
| **Delays** | 延迟 | "Large images delay LCP." |
| **Blocks** | 阻塞 | "JavaScript blocks rendering." |
| **Improves** | 改善 | "A CDN improves TTFB." |
| **Reduces** | 减少 | "Code splitting reduces bundle size." |
| **Eliminates** | 消除 | "Setting image dimensions eliminates CLS." |

---

## Common Sentences

- "Core Web Vitals directly impact SEO rankings."
- "LCP measures how fast the main content loads."
- "CLS is caused by elements jumping around on the page."
- "INP captures the page's overall responsiveness."
- "We need to optimize the critical rendering path."
- "Adding width and height attributes prevents layout shifts."
- "Deploying a CDN improved our TTFB by 40%."

---

## Tags

#tech-vocabulary #web-performance #CoreWebVitals #frontend