## These functions cache the inverse of an invertable matrix


## makeCacheMatrix creates a special matrix that can cache its inverse

  makeCacheMatrix <- function(x = matrix()) 
  {
    myinverse <- NULL
    
    setmatrix <- function(y)
    {
      x <<- y
      myinverse <<- NULL
    }
    
    getmatrix <- function() x
    
    setinverse <- function(solve) myinverse<<- solve
    
    getinverse <- function() myinverse
    
    list (setmatrix = setmatrix, getmatrix = getmatrix, 
          setinverse = setinverse, getinverse = getinverse)
  }


## cacheSolve will return a cached inverse of a matrix.
## If the inverse has not been calculated yet, 
## it will compute the inverse and then cache it.

  cacheSolve <- function(x, ...) 
  {
    myinverse <- x$getinverse()
    
    if(!is.null(myinverse))
    {
      message("getting cached data")
      return(myinverse)
    }
    data <- x$getmatrix()

    myinverse <- solve(data, , ...)

    x$setinverse(myinverse)
    
    myinverse
    
  }
