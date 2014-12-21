## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        if (!is.matrix(x)) {
        print ("Please enter a matrix")
        return (NaN)
        }
        if(nrow(x) != ncol(x)) {
        print ("Please enter a square matrix")
        return(NaN)}
        if det(det(x) == 0) {
        print ("Please enter a non-singular matrix")
        return (NaN)
        }
                m <- NULL
                set <<- function(y) {
                        x <<- y
                        m <<- NULL
                }
        get <- function() x
        setInverse <- function (solve)m <<- solve
        getInverse <- function () m
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
if (is.na(x)) {
return (x)
}

m <- x$getInverse()
if (!is.null(m)) {
        message ("please wait, retreiving data from cache...")
        return(m)
        }
        
data <- x$get()
m <- solve(data, ...)
x$setInverse(m)
m
}
