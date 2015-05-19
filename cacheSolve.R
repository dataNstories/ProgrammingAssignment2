# this function will take a matrix as the 1st parameter and return its inverse

cacheSolve <- function(x=matrix(), ...) {
  
  m<-x$getmatrix()  #  retrieve the matrix from cache
  
 # testing if the matrix already exist?  
  
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)  # retrun the matrix read from cache and exit the funcation
  }

 # if the inverse is not calculated, calcuate the inverse and return the matrix
 
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  return(m)
}