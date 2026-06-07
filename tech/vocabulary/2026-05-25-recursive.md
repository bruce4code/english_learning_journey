# Recursive Vocabulary

## Date
2026-05-25

## Category
Programming & Computer Science

---

## Recursive

### Definition
Recursive describes a process, rule, or procedure that repeats by calling upon itself or referring back to previous steps, often creating nested or layered structures. Common in mathematics and computing, it breaks down complex problems into smaller, similar sub-problems until reaching a base case.

---

## Key Concepts

### 1. Recursive
- **Pronunciation**: /rɪˈkɜːrsɪv/
- **Part of Speech**: Adjective
- **Chinese Meaning**: 递归的
- **Tech Context**: A function or method that calls itself with different parameters to solve a problem.
- **Example Usage**:
  ```javascript
  // Factorial calculation (recursive)
  function factorial(n) {
    // Base case: when n = 0 or 1, return 1
    if (n <= 1) return 1;
    // Recursive case: call function with smaller value
    return n * factorial(n - 1);
  }

  console.log(factorial(5)); // 120 (5 * 4 * 3 * 2 * 1)
  ```

### 2. Recursion
- **Pronunciation**: /rɪˈkɜːrʒən/
- **Part of Speech**: Noun
- **Chinese Meaning**: 递归
- **Tech Context**: The technique of making a function call itself.

---

## Essential Components of Recursion

### 1. Base Case
- **Chinese Meaning**: 基准情形
- **Definition**: The condition when the recursion stops - prevents infinite recursion.
- **Example**: In `factorial(n)`, the base case is `n <= 1`.

### 2. Recursive Case
- **Chinese Meaning**: 递归情形
- **Definition**: The part where the function calls itself with smaller/simpler input.
- **Example**: `n * factorial(n - 1)`

---

## Common Recursive Examples

### Example 1: Factorial
```
n! = n * (n-1) * (n-2) * ... * 1
Base case: 0! = 1, 1! = 1
```

### Example 2: Fibonacci Sequence
```
F(0) = 0, F(1) = 1
F(n) = F(n-1) + F(n-2)
```

### Example 3: Tree Traversal
```
- Pre-order traversal
- In-order traversal  
- Post-order traversal
```

### Example 4: Merge Sort
```
Divide, conquer, merge - classic recursive sorting algorithm
```

---

## Pros and Cons of Recursion

### Advantages
- **Elegance**: Clean and concise code
- **Readability**: Matches mathematical definitions naturally
- **Problem-solving**: Breaks down complex problems intuitively

### Disadvantages
- **Stack Overflow Risk**: Too many recursive calls can exceed stack limit
- **Efficiency**: May have repeated calculations (exponential time for naive Fibonacci)
- **Debugging**: Can be harder to trace than iterative solutions

---

## Related Terms

### Iteration
- **Chinese Meaning**: 迭代
- **Definition**: Using loops instead of function calls - alternative to recursion.

### Stack
- **Chinese Meaning**: 栈
- **Definition**: Data structure used by computers to keep track of recursive calls.

### Memoization
- **Chinese Meaning**: 记忆化
- **Definition**: Optimizing recursive functions by storing computed results.

### Tail Recursion
- **Chinese Meaning**: 尾递归
- **Definition**: Recursive call is the last operation - can be optimized by compilers.

---

## Tags

#tech-vocabulary #recursion #programming #algorithms #computer-science
