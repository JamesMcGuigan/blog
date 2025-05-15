---
title:  Complex Reciprocal Proof
author: ChatGPT 4o
date:   2025-05-15
---
 
> https://chatgpt.com/share/6825e065-658c-8004-84f4-9d4269d07dad

Yes — the equation

$$
(\cos x + i\sin x)^5 = \frac{1}{\cos(-5x) + i\sin(-5x)}
$$

is **true**, and can be proven using **Euler’s formula** and basic properties of complex numbers.

---

### Step-by-step reasoning:

#### Step 1: Use Euler’s formula

Euler’s identity:

$$
e^{ix} = \cos x + i\sin x
$$

So,

$$
(\cos x + i\sin x)^5 = (e^{ix})^5 = e^{i5x}
$$

#### Step 2: Use properties of exponentials

Recall:

$$
\frac{1}{e^{-i5x}} = e^{i5x}
$$

Also note:

$$
\cos(-5x) + i\sin(-5x) = e^{-i5x}
$$

So:

$$
\frac{1}{\cos(-5x) + i\sin(-5x)} = \frac{1}{e^{-i5x}} = e^{i5x}
$$

#### Step 3: Conclude equality

Therefore, both sides are equal:

$$
(\cos x + i\sin x)^5 = e^{i5x} = \frac{1}{e^{-i5x}} = \frac{1}{\cos(-5x) + i\sin(-5x)}
$$

---

### Bonus: Alternate form using de Moivre’s Theorem

De Moivre’s Theorem says:

$$
(\cos x + i \sin x)^n = \cos(nx) + i\sin(nx)
$$

So:

$$
(\cos x + i \sin x)^5 = \cos(5x) + i\sin(5x)
$$

And:

$$
\cos(-5x) + i\sin(-5x) = \cos(5x) - i\sin(5x)
$$

Then:

$$
\frac{1}{\cos(-5x) + i\sin(-5x)} = \frac{1}{\cos(5x) - i\sin(5x)} = \cos(5x) + i\sin(5x)
$$

because the reciprocal of a unit complex number $z$ is $\frac{1}{z} = \bar{z}$ (complex conjugate), and for unit modulus: $z^{-1} = \bar{z}$, and $\bar{z} = \cos(5x) + i\sin(5x)$.
