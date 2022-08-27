## I would write the code with universe

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<-y
    inv <<-NULL
  }
  get <- function()x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function()inv
  list (set=set, get = get, 
        setinv = setinv,
        getinv = getinv)
}

## I learned about return matrix.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  int <- x$getinv()
  if(!is.null(inv)){
    message ("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  return (inv)
}

