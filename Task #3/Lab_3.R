generate_text <- function(len, alphabet) {
  
  alphabet <- c("a", " ", "b", "c")
  indexes <- alphabet
  result <- c()
  
  while(length(result) < 10) {
    
    id <- sample(1:length(indexes), 1)
    
    result[length(result) + 1] = indexes[id]
    
    indexes <- indexes[!(indexes == indexes[id])]
    
    if(length(indexes) == 0) {
      indexes <- alphabet
    }
  }
  
  res <- paste0(result, collapse='')
}


alphabet <- c("a", " ", "b", "c")
indexes <- alphabet
result <- c()

while(length(result) < 10) {
  
  id <- sample(1:length(indexes), 1)
  
  result[length(result) + 1] = indexes[id]
  
  indexes <- indexes[!(indexes == indexes[id])]
  
  if(length(indexes) == 0) {
    indexes <- alphabet
  }
}


