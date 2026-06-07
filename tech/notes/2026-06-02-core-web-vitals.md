# Web Performance Metrics (Core Web Vitals)

## Date
2026-06-02

## Category
Frontend Performance Optimization

---

## Overview

Google's **Core Web Vitals** are a set of real-world metrics that measure user experience on the web. They directly impact SEO rankings, bounce rates, and conversion rates.

---

## The 3 Core Web Vitals (Most Important)

### 1. LCP (Largest Contentful Paint)
**What it measures**: Loading performance — how long the largest visible element (hero image, headline, video) takes to fully render.

**Why it matters**: It's the user's first impression of how fast your page loads.

**Good / Needs Improvement / Poor**:
- ✅ **Good**: ≤ 2.5s
- ⚠️ **Needs Improvement**: 2.5s – 4.0s
- ❌ **Poor**: > 4.0s

**Common causes of poor LCP**:
- Slow server response time (TTFB)
- Render-blocking JavaScript/CSS
- Unoptimized images (too large, wrong format)
- Client-side rendering delays

---

### 2. INP (Interaction to Next Paint)
**What it measures**: Responsiveness — the time between a user interaction (click, tap, keypress) and the next visual update on screen.

**Note**: Replaced **FID (First Input Delay)** in 2024. FID only measured the first interaction; INP measures **all** interactions throughout the page lifecycle.

**Why it matters**: It captures how responsive the page feels during actual use.

**Good / Needs Improvement / Poor**:
- ✅ **Good**: ≤ 200ms
- ⚠️ **Needs Improvement**: 200ms – 500ms
- ❌ **Poor**: > 500ms

**Common causes of poor INP**:
- Heavy JavaScript execution blocking the main thread
- Long tasks (> 50ms)
- Third-party scripts competing for thread time
- Inefficient event handlers

---

### 3. CLS (Cumulative Layout Shift)
**What it measures**: Visual stability — unexpected layout shifts during page load (elements jumping around).

**Why it matters**: Layout shifts frustrate users and cause accidental clicks (e.g., clicking the wrong button because it moved).

**Good / Needs Improvement / Poor**:
- ✅ **Good**: < 0.1
- ⚠️ **Needs Improvement**: 0.1 – 0.25
- ❌ **Poor**: > 0.25

**Common causes of poor CLS**:
- Images/videos without explicit width and height
- Dynamically injected content (ads, banners)
- Web fonts causing FOIT/FOUT (Flash of Invisible/Unstyled Text)
- Third-party embeds loading late

---

## Additional Important Metrics

### 4. FCP (First Contentful Paint)
**What it measures**: The time when the first piece of content (text, image, canvas) is painted on screen.

**Target**: < 1.8s

**Why it matters**: It tells the user something is happening.

---

### 5. TTFB (Time to First Byte)
**What it measures**: The time between the request and the first byte of response from the server.

**Target**: < 800ms

**Why it matters**: It reflects server responsiveness and network quality. Slow TTFB = slow everything.

---

### 6. TBT (Total Blocking Time)
**What it measures**: The total time the main thread is blocked (cannot respond to user input) between FCP and TTI (Time to Interactive).

**Target**: < 200ms (ideally as low as possible)

**Why it matters**: High TBT causes poor INP. It's a lab metric that helps diagnose responsiveness issues.

---

## Metrics Comparison Table

| Metric | Category | What It Measures | Good Target |
|--------|----------|-----------------|-------------|
| **LCP** | Loading | Largest element render time | ≤ 2.5s |
| **INP** | Interactivity | Response to user actions | ≤ 200ms |
| **CLS** | Visual Stability | Unexpected layout shifts | < 0.1 |
| **FCP** | Loading | First content appears | < 1.8s |
| **TTFB** | Loading | Server response time | < 800ms |
| **TBT** | Interactivity | Main thread blocking | < 200ms |

---

## Optimization Strategies

### LCP Optimization

**1. Optimize the LCP image**
- Use modern formats: **WebP / AVIF**
- Add `fetchpriority="high"` to the LCP image
- Compress images aggressively (target < 100KB for hero images)
- Lazy load non-critical images with `loading="lazy"`

```html
<!-- LCP hero image -->
<img src="hero.webp" width="1200" height="630" 
     fetchpriority="high" alt="Hero">

<!-- Below-fold image -->
<img src="product.webp" loading="lazy" width="400" height="300" alt="Product">
```

**2. Improve server response time**
- Use a CDN (CloudFlare, CloudFront, Fastly)
- Implement server-side caching (Redis, Varnish)
- Optimize database queries
- Use HTTP/2 or HTTP/3

**3. Remove render-blocking resources**
- Defer non-critical CSS/JS
- Inline critical CSS
- Use `async` or `defer` for scripts

```html
<script src="analytics.js" defer></script>
<script src="chat-widget.js" async></script>
```

**4. Use a preconnect hint**
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="dns-prefetch" href="https://analytics.example.com">
```

---

### CLS Optimization

**1. Always set width and height on images**
```html
<!-- ❌ Bad: no dimensions -->
<img src="photo.jpg" alt="Photo">

<!-- ✅ Good: explicit dimensions -->
<img src="photo.jpg" width="800" height="600" alt="Photo">
```

**2. Reserve space for dynamic content**
- Set min-height on ad slots
- Reserve space for embeds and banners
- Avoid inserting content above existing content

**3. Use font-display: swap**
```css
@font-face {
  font-family: 'MyFont';
  src: url('/fonts/myfont.woff2');
  font-display: swap; /* prevents FOIT */
}
```

**4. Avoid inserting content above the fold**
- Prefer inserting new content below existing content
- Use absolute positioning for overlays/modals

---

### INP Optimization

**1. Break up long JavaScript tasks**
- Chunk heavy computations with `setTimeout()` or `requestIdleCallback()`
- Use Web Workers for CPU-intensive tasks
- Split code into smaller chunks (code splitting)

**2. Reduce third-party script impact**
- Audit and remove unnecessary third-party scripts
- Load scripts asynchronously
- Limit the number of scripts loading on the main thread

**3. Optimize event handlers**
- Debounce or throttle scroll/resize events
- Avoid expensive DOM operations in event handlers
- Use passive event listeners

```javascript
// ✅ Passive scroll listener improves INP
window.addEventListener('scroll', handler, { passive: true });
```

**4. Use `content-visibility` for off-screen content**
```css
.off-screen-section {
  content-visibility: auto;
  contain-intrinsic-size: 500px;
}
```

---

### TTFB Optimization

**1. Edge caching with CDN**
- Cache HTML at CDN edge
- Use a CDN provider close to your users

**2. Server-side optimization**
- Use a faster runtime (e.g., Node → Rust/Go for critical paths)
- Implement Redis/Memcached caching
- Optimize database queries

**3. Use early hints**
```html
<link rel="preload" href="/style.css" as="style">
<link rel="preload" href="/font.woff2" as="font">
```

---

## Summary: Quick Fix Priority

| Priority | Fix | Metrics Improved |
|----------|-----|-----------------|
| 🔴 P0 | Set width/height on all images | CLS |
| 🔴 P0 | Convert hero image to WebP/AVIF | LCP |
| 🔴 P0 | Add fetchpriority="high" to LCP image | LCP |
| 🟡 P1 | Defer non-critical JS/CSS | LCP, INP, TBT |
| 🟡 P1 | Add long-lived cache headers | TTFB, LCP |
| 🟡 P1 | Use font-display: swap | CLS |
| 🟢 P2 | Deploy CDN | TTFB, LCP |
| 🟢 P2 | Break up long tasks | INP, TBT |
| 🟢 P2 | Lazy load below-fold images | LCP |

---

## Tools for Measuring Performance

| Tool | What It Tracks | Type |
|------|---------------|------|
| **PageSpeed Insights** | LCP, INP, CLS, FCP, TTFB | Online tool |
| **Lighthouse** | Full performance audit | Browser extension / CLI |
| **Chrome DevTools** | Real-time metrics, network, rendering | Browser built-in |
| **WebPageTest** | Detailed waterfall, filmstrip, multi-location | Online tool |
| **RUM (Real User Monitoring)** | Real user data (CrUX, Datadog, New Relic) | Monitoring |

---

## Review Schedule

- [ ] Day 1 review
- [ ] Day 3 review
- [ ] Day 7 review
- [ ] Day 14 review
- [ ] Day 30 review

## Tags

#tech-notes #web-performance #CoreWebVitals #LCP #CLS #INP #optimization #frontend