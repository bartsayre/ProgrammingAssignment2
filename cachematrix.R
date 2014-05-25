## 
## input is an invertible matrix
## one function will be able to calculate the inverse of the input
## and one function will be able to retrieve the inverse 
## returns the inverse of the input matrix
## 

## get, set, calculate the inverse, and get the inverse of a the input matrix

makeCacheMatrix <- function(x = matrix()) {

        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinv <- function(inversein) inverse <<- inversein
        getinv <- function() inverse
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## retrieve and return the inverse of a matrix

cacheSolve <- function(x, ...) {

        inverse <- x$getinv()
        if(!is.null(inverse)) {
                print("getting cached data")
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data)
        x$setinv(inverse)
        inverse

}
