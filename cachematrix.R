## There are two functions here, first function caches the result of inverse of a matrix
## and second function returns the inverse of matrix
## No Edits

## This function caches the inverse of a matrix. It provides getter and setters functions to 
## set a matrix, set and cahce inverse of a matrix, get matrix and get inverse of matrix

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


## this function returns the inverse of a invertible matrix, first it tried to retrieve the inverse 
## from cahe if found otherwise calculates it

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
