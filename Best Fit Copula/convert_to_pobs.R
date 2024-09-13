convert_to_pobs <- function(data) {
  # Convert data to matrix
  data_matrix <- as.matrix(data)
    
  # Convert data to pseudo-observations
  pobs_data <- pobs(data_matrix)
    
  # Check if pseudo-observations contain NA values
  if (any(is.na(pobs_data))) {
     stop("Pseudo-observations contain NA values.")
  }
    
  return(pobs_data)
}
