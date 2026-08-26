# RBAC Architecture Design

## Date
2026-08-26

## Category
Tech Notes - System Design & Access Control

---

## Overview

**RBAC** (Role-Based Access Control) is a security model where access decisions are based on the **roles** that users hold, rather than on individual user identities. Each role bundles a set of permissions, and users are assigned one or more roles.

---

## Key Architecture: Layered Approach

```
┌─────────────────────────────────────────────┐
│                FRONTEND                      │
│  Show/hide menus & features based on roles  │
│  Flexible UI responds to role permissions    │
└──────────────────┬──────────────────────────┘
                   │
                   ▼
┌─────────────────────────────────────────────┐
│                BACKEND                       │
│  Middleware layer (e.g. NestJS Guards)       │
│  ┌─────────────────────────────────┐         │
│  │  Guard = Security Checkpoint    │         │
│  │  Check: Does the user have      │         │
│  │  the required role/permission?  │         │
│  └─────────────────────────────────┘         │
│  Match user's roles against permission list  │
└──────────────────┬──────────────────────────┘
                   │
                   ▼
┌─────────────────────────────────────────────┐
│              DATABASE                        │
│  Users ←→ Roles ←→ Permissions              │
│  Easy to update permissions as project       │
│  evolves                                     │
└─────────────────────────────────────────────┘
```

---

## Design Steps

### Step 1: Define Roles Based on Use Cases
> "I'd start with clearly defining roles based on your actual use cases — like admin, editor, viewer."

| Role | Typical Permissions |
|------|-------------------|
| **Admin** | Full access: create, read, update, delete |
| **Editor** | Can edit content but not manage users |
| **Viewer** | Read-only access |

### Step 2: Backend — Robust Middleware Layer
> "I'd design the backend with a robust middleware layer — like NestJS guards — to check permissions at each endpoint."

- **NestJS Guards** act as **security checkpoints**
- When a user **hits an API**, the guard checks their role or permission
- Match the user's roles against the permission list
- Only **let them through** if they're authorized

### Step 3: Frontend — Flexible, Role-Aware UI
> "On the frontend, I'd keep the UI flexible so it responds to role-based permissions, showing or hiding features."

- Show or hide menus based on roles
- Conditionally render components/features
- Keep the UI in sync with backend permissions

### Step 4: Keep Permissions Easy to Update
> "I'd ensure permissions are easy to update — so you can adapt as your project evolves!"

- Store roles and permissions in the database (not hardcoded)
- Allow admin to update permissions without code changes
- Architecture should be flexible enough to add new roles later

---

## Useful English Phrases

### Giving Design Opinions (Conditional / Hypothetical)
| Phrase | Usage |
|--------|-------|
| **"If I were designing it, I'd start with..."** | 介绍设计思路，虚拟语气 |
| **"I'd design the backend with..."** | 表达设计建议 |
| **"I'd keep the UI flexible so..."** | so that 引导目的 |
| **"I'd ensure permissions are easy to update"** | 强调设计原则 |

### Agreeing & Confirming
| Phrase | Meaning |
|--------|---------|
| **"You're spot on with that layered approach!"** | 你说得太对了！（spot on = exactly right） |
| **"That way, both frontend and backend stay in sync."** | 这样前后端保持同步 |

### Technical Collocations
| Phrase | Meaning |
|--------|---------|
| **layered approach** | 分层方法 |
| **robust middleware layer** | 健壮的中间件层 |
| **security checkpoint** | 安全检查点 |
| **hits an API** | 访问/请求 API（hit = 访问） |
| **let them through** | 放行、允许通过 |
| **stay in sync** | 保持同步 |
| **full control over who can do what** | 完全控制谁能做什么 |
| **adapt as your project evolves** | 随项目演进进行调整 |
| **showing or hiding features** | 显示或隐藏功能 |
| **match against** | 与...进行匹配 |

---

## Vocabulary

### 1. RBAC (Role-Based Access Control)
- **Pronunciation**: /roʊl beɪst ˈæk.ses kənˈtroʊl/
- **Meaning**: 基于角色的访问控制
- **Key Concept**: Permissions are assigned to roles, not individual users. Users gain permissions through their assigned roles.

### 2. Guard (NestJS)
- **Pronunciation**: /ɡɑːrd/
- **Part of Speech**: Noun
- **Meaning**: 守卫、检查点 — In NestJS, a guard is a class annotated with `@Injectable()` that determines whether a request should proceed based on permissions.
- **Analogy**: "Guards are like security checkpoints."
- **Code Reference**:
```typescript
@Injectable()
export class RolesGuard implements CanActivate {
  canActivate(context: ExecutionContext): boolean {
    const requiredRoles = this.reflector.get('roles', context.getHandler());
    const { user } = context.switchToHttp().getRequest();
    return requiredRoles.some(role => user.roles.includes(role));
  }
}
```

### 3. Middleware
- **Pronunciation**: /ˈmɪd.əl.weər/
- **Part of Speech**: Noun
- **Meaning**: 中间件 — Software that sits between the application and the OS/network, processing requests/responses.
- **Collocations**: middleware layer, robust middleware, authentication middleware

### 4. Robust
- **Pronunciation**: /roʊˈbʌst/
- **Part of Speech**: Adjective
- **Meaning**: 健壮的、强韧的 — Able to withstand or overcome adverse conditions.
- **Collocations**: robust middleware, robust architecture, robust solution

### 5. Spot on
- **Pronunciation**: /spɑːt ɒn/
- **Part of Speech**: Idiom (informal)
- **Meaning**: 完全正确、说得太对了
- **Usage**: "You're spot on!" = 你说得太对了！
- **Example**: "Your analysis is spot on."

### 6. Evolve
- **Pronunciation**: /ɪˈvɒlv/
- **Part of Speech**: Verb
- **Meaning**: 演进、逐步发展
- **Collocations**: "as the project evolves", "the system evolved over time"

### 7. In sync
- **Pronunciation**: /ɪn sɪŋk/
- **Part of Speech**: Prepositional phrase
- **Meaning**: 同步、保持一致
- **Usage**: "stay in sync", "keep in sync", "both sides are in sync"
- **Opposite**: out of sync

---

## Architecture Summary Table

| Layer | Responsibility | Key Technology |
|-------|----------------|----------------|
| **Frontend** | Show/hide UI based on roles | Vue/React, conditional rendering |
| **Backend Middleware** | Check permissions per request | NestJS Guards |
| **Authorization Logic** | Match roles against permissions | @Roles() decorator + RolesGuard |
| **Database** | Store users, roles, permissions | Role-Permission mapping table |
| **Admin** | Update permissions without code changes | Dynamic permission management |

---

## Key Takeaways

1. **Define roles first** based on real use cases (admin, editor, viewer)
2. **Backend**: Use guards as security checkpoints at each endpoint
3. **Frontend**: Flexible UI that responds to role permissions
4. **Permissions**: Easy to update, stored in DB (not hardcoded)
5. **Sync**: Both frontend and backend must use the same permission model

---

## Tags

#rbac #architecture #nestjs #guards #permissions #access-control #backend #frontend #tech-English