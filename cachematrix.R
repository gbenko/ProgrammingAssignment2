## Put comments here that give an overall description of what your
## functions do

#This is a pair of functions that cache the inverses of matrices




## Write a short comment describing this function

#First makeCacheMatrix function gets the inverse of a matrix with these steps
#1. set value of the matrix
#2. get the value of the matrix
#3. set the value of the inverse
#4. get the value of the invserse 


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

#this function computes the inverse of the  "matrix" returned by makeCacheMatrix above

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data_to_invert <- x$get()
  inv <- solve(data_to_invert, ...)
  x$setinverse(inv)
  inv
}

#ok done 

