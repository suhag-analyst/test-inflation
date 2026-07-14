# 🌍 Global Inflation Data Analysis Using R

## 📌 Project Overview

This project analyzes global inflation data using **R Programming**. The main objective is to explore inflation trends, clean the dataset, perform statistical analysis, build regression models, and visualize the data using R.

The project demonstrates the practical application of statistics and econometrics techniques in economic data analysis.

---

# 🎯 Objectives

- Import and clean the inflation dataset
- Remove missing values
- Explore and summarize the dataset
- Perform descriptive statistical analysis
- Create data visualizations
- Build simple and multiple linear regression models
- Perform hypothesis testing
- Conduct ANOVA analysis
- Apply Tukey HSD Post Hoc Test
- Perform Chi-Square Test (where applicable)
- Interpret statistical results

---

# 📂 Dataset

**Dataset Name:**
WLD_RTFP_country_2024_03_26

The dataset contains information related to inflation and market prices across different countries.

### Variables Used

- Country
- Inflation
- Open
- High
- Low
- Close

---

# 🛠 Software and Packages

## Software

- R
- RStudio

## Packages

- dplyr
- ggplot2
- car
- stats

---

# 📊 Data Cleaning

The following preprocessing steps were performed:

- Imported the dataset into R
- Checked data structure
- Identified missing values
- Removed missing observations using:

```r
na.omit()
```

- Selected required variables
- Checked data types
- Prepared the dataset for analysis

---

# 📈 Exploratory Data Analysis

The following analyses were performed:

- Summary Statistics
- Mean
- Median
- Maximum
- Minimum
- Standard Deviation
- Data Distribution

---

# 📉 Data Visualization

Several graphs were created using ggplot2, including:

- Histogram
- Scatter Plot
- Bar Chart
- Line Chart

These visualizations help understand the distribution and relationship among variables.

---

# 📚 Statistical Analysis

The project includes the following statistical methods:

## 1. Descriptive Statistics

- Summary
- Mean
- Median
- Maximum
- Minimum
- Standard Deviation

---

## 2. Simple Linear Regression

Model:

Inflation ~ Open

Purpose:

To examine the relationship between Open price and Inflation.

---

## 3. Multiple Linear Regression

Model:

Inflation ~ Open + Low + High + Close

Purpose:

To investigate how multiple market variables influence Inflation.

### Regression Results

- Overall model was statistically significant.
- R-squared = 0.2007
- Adjusted R-squared = 0.2002
- F-statistic = 410.5
- p-value < 0.001

Significant predictors:

- Open
- Low
- High
- Close

---

## 4. Multicollinearity Test

Variance Inflation Factor (VIF) was calculated.

Result:

Very high VIF values indicate severe multicollinearity among Open, High, Low and Close variables.

---

## 5. One-Way ANOVA

Model:

Inflation ~ Country

Purpose:

To compare mean inflation among different countries.

---

## 6. Tukey HSD Test

Performed after ANOVA to determine which country pairs differ significantly.

Countries such as:

- Lebanon
- Sudan
- South Sudan
- Syrian Arab Republic

showed statistically significant differences in inflation compared with Afghanistan.

---

## 7. Chi-Square Test

Used to determine the association between categorical variables.

When assumptions were violated, Monte Carlo simulation was applied.

---

## 8. Hypothesis Testing

The project includes:

- One Sample t-test
- Independent Sample t-test
- ANOVA
- Chi-Square Test

---

# 📌 Key Findings

- Inflation varies across countries.
- Open, High, Low and Close prices significantly influence Inflation.
- The regression model explains approximately 20% of the variation in Inflation.
- Strong multicollinearity exists among market price variables.
- Significant differences in inflation were found for several countries.

---

# 📷 Project Outputs

The repository contains:

- R Scripts
- Cleaned Dataset
- Graphs
- Regression Results
- ANOVA Output
- Tukey HSD Results
- Statistical Interpretation

---

```

---

# 🚀 Skills Demonstrated

- R Programming
- Data Cleaning
- Data Manipulation
- Data Visualization
- Regression Analysis
- ANOVA
- Tukey HSD
- Chi-Square Test
- Hypothesis Testing
- Statistical Interpretation

---

# 📖 Conclusion

This project demonstrates the use of R Programming for economic data analysis. Various statistical techniques were applied to examine inflation patterns across countries. The analysis provides practical experience in data cleaning, visualization, hypothesis testing, regression modeling, and interpretation of results.

---

# 👨‍💻 Author

**Md Suhag Miah**

Department of Economics

Shahjalal University of Science and Technology (SUST)

Bangladesh

---

# ⭐ Acknowledgements

This project was completed as part of learning **R Programming, Statistics, Econometrics, and Data Analysis** for academic and portfolio development.
