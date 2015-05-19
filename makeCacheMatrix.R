# this function will take a matrix, stored it in memoery

makeCacheMatrix <- function(x = matrix()) {
 
  m<-NULL  # initialize a matrix 
     
  set<-function(y){ # set the matrix 
    x<<-y
    m<<-NULL
  }
  # display the matrix
  
  get<-function() x
  
  setmatrix<-function(solve) m<<- solve  # calcuate the inverse and store back
  getmatrix<-function() m  # retrieve the matrix 
  
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
  
}