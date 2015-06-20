## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function stores a list of functions to:
## Set the value of a vector
## Get the value of the vector
## Set the value of the inverse
## Get the value of the inverse
## This assigns the inverse of an object in an environment that is different from the current environment

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
    
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function () m
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
  
}


## Write a short comment describing this function

## This function returns the stored inverse of a matrix if it exsits, other wise it is computed and 
## then stored into a different environment.

cacheSolve <- function(x, ...) {
  
  m <- x$getsolve()
  
  if(!is.null(m)) {
      message("getting cached data")
      return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
  
        ## Return a matrix that is the inverse of 'x'
}
