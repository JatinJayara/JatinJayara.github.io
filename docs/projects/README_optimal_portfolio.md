<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Optimal Portfolio Variance Analysis</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      margin: 20px;
      max-width: 800px;
    }
    h1, h2 {
      color: #333;
    }
    ul, ol {
      margin-left: 20px;
    }
    code {
      background-color: #f4f4f4;
      padding: 2px 4px;
      border-radius: 3px;
    }
  </style>
</head>
<body>
  <h1>Optimal Portfolio Variance Analysis</h1>
  <p>
    This project demonstrates how to calculate the <strong>optimal portfolio variance</strong> using <strong>10 years of historical data</strong> for <strong>10 stocks</strong> sourced from Yahoo Finance. The analysis was completed in <strong>Microsoft Excel</strong> as part of the Worthon Financial Modeling Capstone on Coursera.
  </p>
  
  <h2>Project Overview</h2>
  <ul>
    <li>
      <strong>Objective:</strong><br>
      Determine the portfolio with the minimum variance.
    </li>
    <li>
      <strong>Data:</strong><br>
      10 years of historical price data for 10 stocks from Yahoo Finance.
    </li>
    <li>
      <strong>Methodology:</strong>
      <ol>
        <li><strong>Return Calculation:</strong> Compute daily (or monthly) returns for each stock.</li>
        <li><strong>Covariance Matrix:</strong> Calculate pairwise covariances using Excel functions and organize them into a matrix.</li>
        <li>
          <strong>Portfolio Variance:</strong> Use the formula <em>Var = w<sup>T</sup> Σ w</em> with Excel's matrix multiplication (<code>MMULT</code>).
        </li>
        <li>
          <strong>Solver Optimization:</strong>
          <ul>
            <li><strong>Objective:</strong> Minimize the portfolio variance.</li>
            <li><strong>Variables:</strong> Stock weights.</li>
            <li>
              <strong>Constraints:</strong> Sum of weights equals 1 and (optionally) weights ≥ 0.
            </li>
          </ul>
        </li>
      </ol>
    </li>
  </ul>
  
  <h2>Files Included</h2>
  <ul>
    <li><strong>Optimal_portfolio_varience.xlsx</strong> – Excel workbook with data, calculations, and Solver setup.</li>
    <li><strong>README.md</strong> – This overview of the project.</li>
  </ul>
  
  <h2>How to Use</h2>
  <ol>
    <li>
      <strong>Download:</strong><br>
      Click the "View Project" button on the portfolio website to download the Excel file.
    </li>
    <li>
      <strong>Open Workbook:</strong><br>
      Open <code>Optimal_portfolio_varience.xlsx</code> in Microsoft Excel.
    </li>
    <li>
      <strong>Review Analysis:</strong><br>
      Examine the data, return calculations, covariance matrix, and Solver settings for the portfolio variance.
    </li>
  </ol>
  
  <h2>Future Work</h2>
  <ul>
    <li>
      <strong>Automation:</strong><br>
      Consider using Python or R to automate the process.
    </li>
    <li>
      <strong>Enhancements:</strong><br>
      Expand the analysis by adding more stocks, asset classes, or exploring additional risk metrics.
    </li>
  </ul>
  
  <h2>Acknowledgments</h2>
  <p>
    Developed as part of the <strong>Worthon Financial Modeling Capstone on Coursera</strong> using data from <strong>Yahoo Finance</strong>.
  </p>
  
  <p>Feel free to reach out if you have any questions or need further information.</p>
</body>
</html>
