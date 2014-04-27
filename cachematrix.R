## Put comments here that give an overall description of what your
## functions do

## This function returns a list to get,set, inverse and set inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  im <- NULL
  setmatrix <- function(y) {
    x <<- y
    im <<- NULL
  }
  getmatrix <- function() x    
  setinversematrix <- function(inversematrix) im <<- inversematrix
  getinversematrix <- function() im
  list(getmatrix = getmatrix,
       setmatrix = setmatrix,
       setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)
}


## this function returns the inverser of a invertible matrix and retrieves the inverse 
## from cahe if found

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  im <- x$getinversematrix()
  if(!is.null(im)) {
    message("getting cached data")
    return(im)
  }
  mat <- x$getmatrix()
  im <- solve(mat)
  x$setinversematrix(im)
  im
}
