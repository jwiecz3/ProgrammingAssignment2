## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## variable i represents the inverse of the matrix 

makeCacheMatrix <- function(x = matrix()) {
       i = NULL
       set <- function(y) {
              x <<- y
              i <<- NULL
       }
       get = function() x
       getinverse = function() i
       ## Caches the input to the inverse
       setinverse = function(z) i <<- z 
       list(set = set, get = get,
            setinverse = setinverse,
            getinverse = getinverse)
}


## Write a short comment describing this function
## variable i represents the inverse matrix 
## variable mat represents the retrieved matrix from the maker function

cacheSolve <- function(x, ...) {
      ## Retrieves inverse of 'x' if it exists
        i <- x$getinverse()
       if(!is.null(i)) {
              message("getting cached data")
              return(i)
       }
       ## Return a matrix that is the inverse of 'x'
       mat <- x$get()
       i <- solve(mat)
       x$setinverse(i)
       i

}
