## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Written as part of Coursera's R Programming course
## By Vidhi Shah

makeCacheMatrix <- function(x = matrix()) {
        
        ## This function creates a "matrix" that can cache its inverse
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## Write a short comment describing this function
## This function computes the inverse of the "matrix" returned by makeCacheMatrix
## If inverse has already been calculated, cacheSolve will retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("Getting cached data.")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
 

 
