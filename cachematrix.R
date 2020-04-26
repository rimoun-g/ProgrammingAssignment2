## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  v <- NULL
  set <- function (y){
    x <<- y
    v <<- NULL
  }
  # setting x 
  get <- function () x 
  # inverse function
  set_inverse <- function (solve) v <<- solve
  # get the inersed matrix
  get_inverse <- function() v
  list (set = set, get=get, set_inverse=set_inverse, get_inverse=get_inverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  # cehcking the inverse of the matrix
  v <- x$get_inverse()
  #if found then it gets it, if not it will solve the matrix then cache it for next use
  if(!is.null(v)){
    message("getting cached data")
    return(v)
  }
  data <- x$get()
  v <- solve(data,...)
  x$set_inverse(v)
  #returning the solved matrix
  v
}


