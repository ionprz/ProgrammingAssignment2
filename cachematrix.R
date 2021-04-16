## Put comments here that give an overall description of what your
## functions do
The goal of work is to create two functions, "makeCacheMatrix" and "cacheSolve," that stock the opposite of a matrix.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function
cacheSolve is a function that calculates the reciprocal of a particular "matrix."
makeCacheMatrix displays a cache matrix If the opposite has already been computed, the cacheSolve function can recover it from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinv()
if(!is.null(inv)) {
message("getting cached result")
return(inv)
}
data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv
}