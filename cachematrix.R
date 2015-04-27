## Write a short comment describing this function
## Function for storing matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL	
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function () x
	setsolve <- function(solve) m <<- solve
	getsolve <- function() m
	list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)	
}

## Write a short comment describing this function
## Function for access makeCacheMatrix function and
## solving or getting inverse
cacheSolve <- function(x, ...) {
	m <- x$getsolve()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	} 
	data <- x$get()
	m <- solve(data, ...)
	x$setsolve(m)
	m
} 

