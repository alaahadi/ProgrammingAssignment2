## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Caching the Inverse of a Matrix
## makeCacheMatrix creates a special "matrix" object that can cache its inverse 
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
          x <<- y
          n <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) n <<- inverse
  getinverse <- function() n
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## cashSolve computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
  n <- x$getinverse()
  if (!is.null(n)) {
          message("getting cached data")
     ## Return a matrix that is the inverse of 'x'
          return(n)
  }
  data <- x$get()
  n <- solve(data, ...)
  x$setinverse(n)
  n
}

       

