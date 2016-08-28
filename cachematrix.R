## If I am understanding this right, we are to take the give code that was caching the mean of a vector and apply
## it to caching the inverse of a matrix. Which means we should be able to transform the givien code from a vector
## to a martix and enable it to caching the inverse of a matrix.

## So this is creating a martrix to be cached later in part 2
## inver = inverse, variable

makeCacheMatrix <- function(x = matrix()) {
    inver <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    set_inverse <- function(inverse) m <<- inverse
    get_inverse <- function() inver
    list(set = set, get = get,
    set_inverse = set_inverse,
    get_inverse = get_inverse)

}


## Again, i took the writen code from the vector and modified it. This should be taking the inverse of the above
## matrix and either calculating the inverse or if it has already been done retreiving it for us

cacheSolve <- function(x, ...) {
    m <- x$get_inverse()
    if(!is.null(inver)) {
        message("getting cached data")
        return(inver)
    }
    data <- x$get()
    m <- solve(mat, ...)
    x$set_inverse(inver)
    inver
}
