## Caches the inverse of a matrix for future uses.

## Creates an object (a 'special' matrix) that represents a matrix
## (given by 'x') and stores it`s inverse matrix.
makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse_matrix) inverse <<- inverse_matrix
    getinverse <- function() inverse
    ## Return a 'special' matrix
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Returns the inverse of the 'special' matrix 'x', which has constructed
## via makeCacheMatrix().
cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if(!is.null(inverse)) {
        ## Return a cashed inverse matrix of 'x'
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setinverse(inverse)
    ## Return a matrix that is the inverse of 'x'
    inverse
}