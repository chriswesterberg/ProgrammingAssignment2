## two functions operating together to calculate a matrix' inverse
## or retrieve it from the cache if already calculated

## makeCacheMatrix creates a matrix with fuctions to set the matrix
## get the matrix, set its inverse, get its inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    setmx <- function(y) {
        x <<- y
        i <<- NULL
    
    }
    getmx <- function() x
    setinv <- function(inv) i <<- inv
    getinv <- function() i
    list(setmx = setmx, getmx = getmx,
       setinv = setinv,
       getinv = getinv)
}


## cacheSolve gets the inverse matrix from the cache
## if it has already been calculated once, and then returns the value

cacheSolve <- function(x, ...) {
    i <- x$getinv()
    if(!is.null(i)) {
        message("getting inverse matrix from the cache")
        return(i)
    }

