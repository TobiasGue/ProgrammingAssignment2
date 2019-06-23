## Put comments here that give an overall description of what your
## functions do



## This function creates a special "matrix" object that can cache its inverse
## basically: same as the makeVector example Code, just inverse instead of mean.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
            setinverse = setinverse,
            getinverse = getinverse)
}





## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)){
    message('getting cached data')
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
  ## Return a matrix that is the inverse of 'x'
}