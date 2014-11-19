## In these pair of functions I´m trying to caching the inverse of a matrix
## rather than cmpute it repeatedly in order to save some computation cost

## This function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        ## solve() in R Compute the inverse of a square matrix
        ## <<- operator can be used to assign a value to an object
        ## in an environment that is different from the current environment
        xsolve <<-solve(x)
}


## This function computes the inverse of the special matrix returned
## by makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(xsolve)){
                message("getting cached data")
                return(xsolve)
        }
        xsolve2 <- solve(x)  
        print(xsolve2)
}
