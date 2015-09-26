#################################################

#       TWEET TEXT HIERACHICAL CLUSTERING       #

#################################################

# compute word frequencies for a string vector
word.clust <- function(file, sparse = NULL, k = NULL, h = NULL, method = NULL){
  
  ## Plotting the word frequencies 
  myTdm21 = removeSparseTerms(file, sparse)
  # preparing word frequencies
  m21 = as.matrix(myTdm21)
  # Distance Matrix Computation
  distMatrix21 = dist(scale(m21))
  # Hierarchical cluster analysis of terms
  fit = hclust(distMatrix21, method)
  # Plot the tree (hierarchical cluster analysis)
  plot(fit, xlab = "distMatrix(TermDocumentMatrix)")
  # Hierarchical cluster analysis of terms
  rect.hclust(fit, k, h)
  # Group the tree by clusters k and height h
  groups = cutree(fit, k, h)
  
  return(word.clust)
  
}

word.file <- function(file, sparse = NULL){
  
  ## Plotting the word frequencies 
  myTdm21 = removeSparseTerms(file, sparse)
  # preparing word frequencies
  m21 = as.matrix(myTdm21)
  wordFreq <- sort(rowSums(m21), decreasing = TRUE)
  capture.output(wordFreq, file = "word.frequencies.txt", append = FALSE)
  
  return(word.file)
  
}
