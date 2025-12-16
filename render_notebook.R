#!/usr/bin/env Rscript

# Script to render the Bondora Classification Analysis R Markdown to HTML
# Usage: Rscript render_notebook.R

cat("=====================================\n")
cat("Bondora Classification Analysis\n")
cat("R Markdown Rendering Script\n")
cat("=====================================\n\n")

# Check if required packages are installed
# Note: ggplot2 is included in tidyverse but listed separately for clarity
required_packages <- c("rmarkdown", "tidyverse", "caret", 
                       "corrplot", "gridExtra", "scales", "knitr", 
                       "pROC", "randomForest")

cat("Checking for required packages...\n")
missing_packages <- required_packages[!(required_packages %in% installed.packages()[,"Package"])]

if(length(missing_packages) > 0) {
  cat("\nMissing packages detected:", paste(missing_packages, collapse=", "), "\n")
  cat("Installing missing packages...\n")
  install.packages(missing_packages, repos = "https://cloud.r-project.org/")
  cat("Installation complete.\n\n")
} else {
  cat("All required packages are installed.\n\n")
}

# Render the R Markdown file
cat("Rendering Bondora_Classification_Analysis.Rmd...\n")
cat("This may take 5-10 minutes depending on your system.\n\n")

start_time <- Sys.time()

tryCatch({
  rmarkdown::render("Bondora_Classification_Analysis.Rmd", 
                    output_format = "html_document",
                    output_file = "Bondora_Classification_Analysis.html")
  
  end_time <- Sys.time()
  elapsed_time <- round(difftime(end_time, start_time, units = "mins"), 2)
  
  cat("\n=====================================\n")
  cat("SUCCESS!\n")
  cat("=====================================\n")
  cat("HTML file generated: Bondora_Classification_Analysis.html\n")
  cat("Time elapsed:", elapsed_time, "minutes\n")
  cat("\nYou can now open the HTML file in your web browser.\n")
  
}, error = function(e) {
  cat("\n=====================================\n")
  cat("ERROR occurred during rendering:\n")
  cat("=====================================\n")
  cat(conditionMessage(e), "\n\n")
  cat("Please check:\n")
  cat("1. All required packages are installed\n")
  cat("2. Bondora.csv and Description.csv are in the same directory\n")
  cat("3. You have write permissions in the current directory\n")
  cat("4. R version is compatible (tested on R >= 4.0)\n")
})
