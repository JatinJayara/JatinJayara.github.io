

This project demonstrates how to calculate the **optimal portfolio variance** using **10 years of historical data** for **10 stocks** sourced from Yahoo Finance. The analysis was completed in **Microsoft Excel** as part of the Worthon Financial Modeling Capstone on Coursera.

## Project Overview

- **Objective:**  
  Determine the portfolio with the minimum variance.

- **Data:**  
  10 years of historical price data for 10 stocks from Yahoo Finance.

- **Methodology:**  
  1. **Return Calculation:** Compute daily (or monthly) returns for each stock.  
  2. **Covariance Matrix:** Calculate pairwise covariances using Excel functions and organize them into a matrix.  
  3. **Portfolio Variance:** Use the formula \(\text{Var} = w^T \Sigma w\) with Excel's matrix multiplication (`MMULT`).  
  4. **Solver Optimization:**  
     - **Objective:** Minimize the portfolio variance.  
     - **Variables:** Stock weights.  
     - **Constraints:** Sum of weights equals 1 and (optionally) weights \(\geq 0\).

## Files Included

- **Optimal_portfolio_varience.xlsx** – Excel workbook with data, calculations, and Solver setup.
- **README.md** – This overview of the project.

## How to Use

1. **Download:**  
   Click the "View Project" button on the portfolio website to download the Excel file.

2. **Open Workbook:**  
   Open `Optimal_portfolio_varience.xlsx` in Microsoft Excel.

3. **Review Analysis:**  
   Examine the data, return calculations, covariance matrix, and Solver settings for the portfolio variance.

## Future Work

- **Automation:**  
  Consider using Python or R to automate the process.
- **Enhancements:**  
  Expand the analysis by adding more stocks, asset classes, or exploring additional risk metrics.

## Acknowledgments

Developed as part of the **Worthon Financial Modeling Capstone on Coursera** using data from **Yahoo Finance**.

Feel free to reach out if you have any questions or need further information.
