## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) { #this will set the value of the matrix 
    x <<- y
    i <<- NULL
  }
  get <- function() x #this will get the value of the matrix
  setinverse <- function(inverse) i <<- inverse #this will set the value of the inverse
  getinverse <- function() i #this will get the value of the inverse
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cachhed data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
          ## Return a matrix that is the inverse of 'x'

