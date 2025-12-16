# Bondora Loan Default Classification - Hackathon Submission

## Overview

This repository contains a complete data science analysis for predicting loan defaults in the Bondora dataset. The analysis follows the hackathon requirements exactly, covering all required sections:

1. **Data Analysis** (10 points)
2. **Data Transformation** (10 points)
3. **Modelling** (10 points)
4. **Implementation** (20 points)
5. **Evaluation** (30 points)
6. **Reflection** (20 points)

## Files

- **Bondora_Classification_Analysis.Rmd** - Main R Markdown notebook (SUBMISSION FILE)
- **Bondora.csv** - Loan dataset
- **Description.csv** - Variable descriptions (converted from Description.xlsx)
- **Handout.pdf** - Task requirements
- **render_notebook.R** - Script to compile the R Markdown to HTML

## How to Generate HTML Output

### Prerequisites

You need R installed with the following packages:
- tidyverse
- caret
- ggplot2
- corrplot
- gridExtra
- scales
- knitr
- pROC
- rmarkdown
- randomForest

### Installation (if needed)

```r
install.packages(c("tidyverse", "caret", "ggplot2", "corrplot", 
                   "gridExtra", "scales", "knitr", "pROC", 
                   "rmarkdown", "randomForest"))
```

### Rendering the Notebook

#### Option 1: From R Console
```r
rmarkdown::render("Bondora_Classification_Analysis.Rmd")
```

#### Option 2: From Command Line
```bash
Rscript -e "rmarkdown::render('Bondora_Classification_Analysis.Rmd')"
```

#### Option 3: From RStudio
1. Open `Bondora_Classification_Analysis.Rmd` in RStudio
2. Click the "Knit" button at the top
3. The HTML will be generated automatically

#### Option 4: Using the provided script
```bash
Rscript render_notebook.R
```

## Expected Output

- **Bondora_Classification_Analysis.html** - Compiled HTML report with all code, results, and visualizations

## Key Features

### Data Analysis
- Comprehensive EDA with target distribution analysis
- 4 feature patterns identified:
  - Age distribution and default relationship
  - Interest rate correlation with defaults
  - Debt-to-income ratio impact
  - Previous loan history patterns
- All interpretations specific to Bondora loan default use case

### Data Transformation
- Missing value imputation with justification
- Correlation analysis and multicollinearity removal
- Feature engineering (debt_burden, age_group)
- Class imbalance handling strategy

### Modelling
- Logistic Regression (baseline)
- Random Forest (main model)
- Data-specific pros/cons for each approach (NO generic explanations)
- Clear rationale for model selection

### Implementation
- 80/20 stratified train/test split
- Cross-validation with SMOTE for imbalance
- Feature importance analysis
- Both models fully trained and compared

### Evaluation
- Confusion matrix with detailed interpretation
- ROC curve and AUC analysis
- Optimal threshold selection (Youden's Index)
- Cost-benefit framework
- All metrics interpreted for loan default context

### Reflection
- Model performance assessment
- Feature importance interpretation
- Future improvements (hyperparameter tuning, XGBoost, advanced feature engineering)
- Additional datasets recommendations (credit bureau, income verification, macroeconomic data)
- Actionable business recommendations

## Notes

- All code is designed to run from top to bottom without errors
- Random seed (42) is set for reproducibility
- All explanations are specific to the Bondora loan default use case
- No generic machine learning explanations
- Professional, submission-ready quality

## Execution Time

The notebook takes approximately 5-10 minutes to execute completely, depending on your system:
- Data loading and EDA: ~1 minute
- Data transformation: ~1 minute
- Model training: ~3-7 minutes (Random Forest with cross-validation)
- Evaluation and visualization: ~1 minute

## Author

Created for the SBD2 - Data-Drive Visualization for Decision Making Hackathon (AS25)
