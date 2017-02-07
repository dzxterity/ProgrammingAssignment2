## Code to generate inverse of Mmtrix and cache it

## Function stores x matrix and calculates inverse of this matrix

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
        x <<- y
        m <<- NULL
      }
      get <- function() x
      setsolve <- function(solve) m <<- solve
      getsolve <- function() m
      list(set = set, get = get,
           setsolve = setsolve,
           getsolve = getsolve)
}


## This function is needed if we want to get inverse of the matrix from cache
            
cacheSolve <- function(x, ...) {
      m <- x$getsolve()
      if(!is.null(m)) {
       message("getting cached data")
        return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setsolve(m)
      m
}

