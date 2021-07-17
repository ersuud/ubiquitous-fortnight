## Put comments here that give an overall description of what your
## functions do: With this whole project, we first aim to create a vector (list in real)
#which contains the function to get and set values. After that, we want to deciede
# if the inverse of a matrix x is already calculated (stored in the cache). If that so, 
# the second function retrieves its value from the cache.



## Write a short comment describing this function: As described in the question,
#this function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  set_inverse <- function(inverse) inv <<- inverse
  get_inverse <- function() inv
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}


## Write a short comment describing this function: In this function, if inv is 
# not NULL, which means it is already calculated, it should return the value
# from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$get_inverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$set_inverse(inv)
  inv
}

