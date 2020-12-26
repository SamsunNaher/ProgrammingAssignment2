
##################### Codes for getting inverse matrix of X ####################


## I have used a pair of functions to cache the inverse of a matrix.

## I have created a matrix object, named makeCacheMatrix that can cache its 
##inverse. 

makeCacheMatrix <- function(x = matrix()) {
           invx <- NULL
           set <- function(y){
                 x<<- y
                 invx <<- NULL
}


           
## I can get the matrix using following method: 

get <- function(){x}

## I can set the inverse of the matrix using following method:

setInverse <- function(inverse) {invx <<- inverse}

## I can get the inverse of the matrix using following method:

getInverse <- function() {invx}

## I can create a list of the methods to return using the following codes:

list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## cache is an important computiong function in R. 

cacheSolve <- function(x, ...) {
        invx <- x$getInverse()   ## Return a matrix that is the inverse of 'x'
        if(!is.null(invx)){
          message("getting cached data")
          return(invx)
        }
        mat <- x$get()
        invx <- solve(mat, ...)
        x$setInverse(invx)
        invx
}

########################### Producing result #################################


xmatrix <- makeCacheMatrix(matrix(2:5, 2, 2))

xmatrix$get()

xmatrix$getInverse()

cacheSolve(xmatrix)









