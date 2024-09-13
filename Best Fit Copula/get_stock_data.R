get_stock_data<-function(stocks, train_start, train_end){
    vec<-list()
    for (i in 1:length(stocks)){
      data <- as.data.frame(getSymbols(stocks[i], src = "yahoo", from = train_start, to = train_end, auto.assign = FALSE))
      adjusted_col <- paste0(stocks[i], ".Adjusted")
      adjusted_prices <- data[[adjusted_col]]
      
      vec[[i]]<-adjusted_prices
    }
    df<-data.frame(vec)
    colnames(df)<-stocks
    return (df)
  }
