# Optimal Portfolio Variance: Modern Portfolio Theory Implementation

## Project Overview

This project implements **Modern Portfolio Theory (MPT)** to construct a minimum-variance portfolio using 10 years of daily price data for 10 stocks. The analysis was performed in **Microsoft Excel** using advanced functions (covariance matrix, MMULT) and the Solver add-in for optimization.

- **Project Timeline:** March–April 2025 (uploaded to GitHub April 2025)
- **Academic Context:** Developed as part of the Wharton Business \& Financial Modeling Capstone, University of Pennsylvania (Coursera, completed February 2025, Credential ID: 8XMGQ1EYE2G1)
- **Key Result:** Achieved an optimized portfolio with an annualized return of 11.47% and minimized variance, demonstrating practical risk management and quantitative finance skills.


## Objective

- **Goal:** Minimize portfolio variance (risk) while achieving a target expected return, under the framework of Modern Portfolio Theory.
- **Constraints:** Portfolio weights sum to 1; scenarios with and without short selling.


## Data \& Methodology

- **Data Source:** Yahoo Finance (10 years of daily price data for 10 global stocks)
- **Steps:**

1. Calculated daily returns for each stock.
2. Built a 10x10 covariance matrix to measure pairwise asset correlations (see CovarianceMatrix tab).
3. Used the portfolio variance formula:

$$
\text{Var}(R_p) = w^T \Sigma w
$$

where $w$ = weights, $\Sigma$ = covariance matrix.
4. Applied Excel Solver to find optimal weights minimizing variance, with and without short selling.
5. Evaluated portfolio return, variance, standard deviation, and Sharpe ratio.


## Key Results

- **Optimal Portfolio (No Short Selling):**
    - Major allocations: Disney (39.2%), Google (17.6%), TSLA (16.8%), AAPL (17.3%)
    - Portfolio Return: 0.106%
    - Standard Deviation: 1.26%
    - Sharpe Ratio: 0.084
- **Optimal Portfolio (Short Selling Allowed):**
    - Allocations include negative weights for some stocks (see Solver Optimization tab)
    - Portfolio Return: 0.1147%
    - Standard Deviation: 1.30%
    - Sharpe Ratio: 0.088

All calculations and results are available in the Excel workbook.

## Files Included

- `Optimal_portfolio_varience.xlsx` – Contains raw data, covariance matrix, Solver setup, and optimization results.
- `README.md` – This documentation.


## How to Use

1. **Download the Repository:**
Clone or download and open `Optimal_portfolio_varience.xlsx` in Microsoft Excel.
2. **Review the Analysis:**
    - "Historical Price Data (10 Years)" tab: raw returns.
    - "CovarianceMatrix" tab: pairwise asset correlations.
    - "Solver Optimization" tab: optimal weights and risk/return metrics.
3. **Replicate or Extend:**
    - Adjust stock tickers or time periods.
    - Use Solver to test other constraints or objectives.

## Skills \& Tools Demonstrated

- Quantitative finance: Modern Portfolio Theory, risk-return optimization
- Excel: Solver, MMULT, covariance matrix, data analysis
- Financial modeling and documentation


## Academic Context

- **Certification:** Wharton Business \& Financial Modeling Capstone, University of Pennsylvania (Coursera, February 2025)
- **Other Relevant Skills:**
    - Google Advanced Data Analytics Certificate (April 2025)
    - NISM Research Analyst Certification (2024–2027)
    - Additional analytics projects in Python (see profile for tumor detection, e-commerce analysis, ESG stock predictor)


## Future Work

- Automate portfolio optimization in Python (pandas, numpy, cvxpy)
- Integrate ESG factors for sustainable investing (planned for upcoming project)
- Enhance visualization and reporting
