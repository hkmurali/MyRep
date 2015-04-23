## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Creating a special vector, which is a matrix containing a funciton to set, 
# get value of matrix,and get,set value of inverse of that matrix

makeCacheMatrix <- function(x = matrix()) {
  inve <- NULL
  set <- function(y) {
    x <<- y
    inve <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inve <<- inverse
  getinverse <- function() inve
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function
## creating a function return inverse of the original matrix X and then 
# store the result in cache and retrieve it when called for 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inve <- x$getinverse()
  if(!is.null(inve)) {
    message("getting cached data.")
    return(inve)
  }
  data <- x$get()
  inve <- solve(data)
  x$setinverse(inve)
  inve
}
