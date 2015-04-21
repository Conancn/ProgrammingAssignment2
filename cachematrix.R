## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    iv <- NULL
    set <- function(y) {
        x <<- y
        iv <<- NULL
    }
    get <- function() x
    setiv <- function(slove) iv <<- slove
    getiv <- function() iv
    list(set = set, get = get, setiv=setiv, getiv=getiv)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    iv <- x$getiv()
    if(!is.null(iv)){
        message("getting cached data")
        return(iv)
    }
    data <- x$get()
    iv <- solve(matrix, ...)
    x$setiv(iv)
    iv
}
