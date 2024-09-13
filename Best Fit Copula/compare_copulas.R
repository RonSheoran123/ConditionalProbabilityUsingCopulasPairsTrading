compare_copulas <- function(stocks, train_start, train_end) {
    # Get the stock data
    data <- get_stock_data(stocks, train_start, train_end)
    
    # Check data before fitting copulas
    if (ncol(data) < 2) {
      stop("Not enough columns in data for copula fitting.")
    }
    
    # Define copula types
    copulas <- c("Student-t", "Clayton", "Gumbel")
    
    # Fit and evaluate each copula
    results <- sapply(copulas, function(copula) {
      fit_and_evaluate_copula(data, copula)
    }, simplify = "data.frame")
    
    return(results)
}
