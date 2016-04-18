## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
cachedMatrix <- matrix()
cachedInvMatrix <- matrix()

makeCacheMatrix <- function(x = matrix()) {
  cachedMatrix <<- x
  cachedInvMatrix <<- solve(cachedMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(identical(x, cachedMatrix) == FALSE){
    makeCacheMatrix(x)
  }
  
  cachedInvMatrix
}
