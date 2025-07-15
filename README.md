# AS-MBR Simulation using Runge-Kutta (MATLAB)

This project simulates nutrient removal in an Algae-Sludge Membrane Bioreactor (AS-MBR) using the 4th-order Runge-Kutta method.

📘 Based on the paper:  
*Exploring the essential factors of performance improvement in sludge membrane bioreactor technology coupled with symbiotic algae*  
Published in *Water Research (2020)*  
[DOI: 10.1016/j.watres.2020.115843](https://doi.org/10.1016/j.watres.2020.115843)

---

## 📁 Files Included:
- `main_simulation.m` – Main script that sets initial conditions, calls the RK4 solver, and plots results
- `runge_kutta.m` – Function implementing the Runge-Kutta method for solving first-order ODEs

---

## ⚙️ How to Run in MATLAB:
1. Download or clone the repository
2. Place both `.m` files in the same folder
3. Open `main_simulation.m` in MATLAB
4. Press Run ▶️

---

## 📊 Output:
The code simulates the time-based removal of:
- COD (Chemical Oxygen Demand)
- NH₄⁺ (Ammonium)
- TN (Total Nitrogen)
- PO₄³⁻ (Phosphate)

...based on the experimental removal rates reported in the article.  
Results are displayed as 4 plots showing exponential decay behavior over time.

![Simulation Output](Final.jpg)

---

## 🧠 About the Project:
This project is part of my Master's work in Chemical Engineering – Process Design.  
It demonstrates how experimental results can be validated and visualized through mathematical modeling.

---

## 🌐 LinkedIn Post:
You can view the full post and explanation here:  
🔗 *[Add your LinkedIn post link here]*

---

Created by [Your Name]  
📍 [Optional: University or Affiliation]  
📧 [Optional: Email or LinkedIn]
