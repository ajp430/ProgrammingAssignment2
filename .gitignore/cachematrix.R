## The function is going to cache the inverse of a matrix

## set the value of a matrix
## get the value of a matrix
## set the inverse value of a matrix
## get the inverse value of a matrix

makeCacheMatrix <- function(x = matrix()) {
	a <- NULL
	set <- function(b){
		x <<- b
		a <<- NULL
	}
	get <- function() x
	set_matrix_inverse <- function(inverse) a <<- inverse
	get_matrix_inverse <- function() a
	list (set = set, get = get, set_matrix_inverse = set_matrix_inverse ,get_matrix_inverse = get_matrix_inverse)

}

## check to see if the inverse has already been calculated
## if so, get the inverse from the cache and skip the computation
## if not, calculates teh inverse of the data and set the value of the inverse in the cache

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
        a <- x$get_matrix_inverse()
        if(!is.null(a)){
        	message("getting cached data")
        	return(a)
        }
        data <- x$get()
        a <- inverse(data,...)
        x$set_matrix_inverse(a)
        a

}
