## These functions will take a matrix and provide it's inverse
## We assume that the input data is always correct and matrix inversion is possible

## This function will cache the inverse of a matrix in memory

makeCacheMatrix <- function(x = matrix()) 
{
  ## m is the variable which will retain the reverse of the matrix  
  ## p is just a temporary variable
  m <<- NULL
  p <- x
  m <- solve(p)
  ## a sample matrix is matrix(data=c(1:4,2:5,c(4,7,3,1),c(2,3,1,5)),nrow=4,ncol=4)
}


##This function will return the reverse of a matrix. 
##First it will check if the reverse already exists.
##Then it will return the reverse from cache.
##Else it will calculate the reverse using 
##the solve() function

cacheSolve <- function(x, ...) 
{
  ## Return a matrix that is the inverse of 'x'
  ## basic check to see if the variable m exists
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
  r <- solve(x)
  r
}