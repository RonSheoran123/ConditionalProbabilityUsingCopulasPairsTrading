fit_and_evaluate_copula <- function(data, copula_type) {
    # Convert data to pseudo-observations
    pobs_data <- convert_to_pobs(data)
    
    # Fit the copula model and handle errors
    tryCatch({
      if (copula_type == "Student-t") {
        copula_fit <- fitCopula(tCopula(dim=2), pobs_data, method="ml")
      } else if (copula_type == "Clayton") {
        copula_fit <- fitCopula(claytonCopula(dim=2), pobs_data, method="ml")
      } else if (copula_type == "Gumbel") {
        copula_fit <- fitCopula(gumbelCopula(dim=2), pobs_data, method="ml")
      } else {
        stop(paste("Unknown copula type:", copula_type))
      }
      
      # Calculate Log-Likelihood, AIC, and BIC
      log_likelihood <- logLik(copula_fit)
      n <- nrow(data)
      p <- length(copula_fit@estimate)
      aic <- -2 * log_likelihood + 2 * p
      bic <- -2 * log_likelihood + log(n) * p
      
      return(c(LogLikelihood = log_likelihood, AIC = aic, BIC = bic))
      
    }, error = function(e) {
      warning(paste("Error fitting copula of type", copula_type, ":", e$message))
      return(c(LogLikelihood = NA, AIC = NA, BIC = NA))
    })
}
