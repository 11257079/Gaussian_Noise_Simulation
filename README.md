# Gaussian Distribution Simulation for Navigation Systems

This MATLAB script demonstrates how two independent Gaussian random variables behave when combined or subtracted.  
It connects a simple probability concept with real-world **sensor fusion** and **navigation filter design** (e.g., GPS/INS integration).

---

## 🎯 1. What Each Color Means

**Red (x):** random variable \( x \sim \mathcal{N}(0, 2^2) \)  
→ mean \( \mu_x = 0 \), standard deviation \( \sigma_x = 2 \)

**Green (y):** random variable \( y \sim \mathcal{N}(0, 3^2) \)  
→ mean \( \mu_y = 0 \), standard deviation \( \sigma_y = 3 \)

**Yellow (z = x − y):** represents the **difference between two independent Gaussian variables**

---

## 📘 2. Theoretical Properties of \( z = x - y \)

If \( x \) and \( y \) are independent and Gaussian:

\[
z = x - y \sim \mathcal{N}(\mu_x - \mu_y, \sigma_x^2 + \sigma_y^2)
\]

Plugging in your values:

\[
\mu_z = 0 - 0 = 0
\]
\[
\sigma_z = \sqrt{2^2 + 3^2} = \sqrt{13} \approx 3.606
\]

So, **z is also Gaussian**, but **wider (more spread out)** than both x and y.

---

## 🛰️ 3. Relevance to Navigation Systems

In navigation (GPS/INS, radar, star sensor fusion, etc.):

- Each measurement or sensor reading has **Gaussian noise** (uncertainty).  
- When two uncertain quantities are **combined or subtracted**, their variances **add up**.  
- This is exactly how **Kalman filters** update uncertainty:

\[
P_{\text{combined}} = P_1 + P_2
\]

**Example:**  
- GPS position error: σ = 3 m  
- IMU drift error: σ = 5 m  
→ Combined uncertainty: \( \sqrt{3^2 + 5^2} = 5.83 m \)

The same principle is shown in this simulation — combining random processes leads to **larger uncertainty** (wider Gaussian).

---

## 📈 4. Result Visualization

![Gaussian Distributions](gaussian_distribution.png)

- **Red:** \( x \sim N(0, 2^2) \) → narrow  
- **Green:** \( y \sim N(0, 3^2) \) → wider  
- **Yellow:** \( z = x - y \) → widest (uncertainty grows)

---

## 💻 5. Run the Code

1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/Gaussian_Distribution_Navigation.git
