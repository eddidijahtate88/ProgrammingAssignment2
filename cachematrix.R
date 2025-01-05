## These two functions tries to compute the inverse matrix on the given matrix. And if the inverse matrix is already calculated, then it prints the message to confirm that the given matrix is already inverse. 

## MakeCacheMatrix function is used to set, get the matrix and set, get the inverse matrix as well. The function can set the inverse of the matrix using set_inverse_matrix function and cache the already calculated inverse matrix which can be retrieved by get_inverse_matrix function. 

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL 
        
        set_matrix <- function(y) {
                x <<- y 
                i <<- NULL 
        }
        get_matrix <- function() {
                return(x)
        }
        set_inverse_matrix <- function(inverse) {
                i <<- inverse
                
        }
        get_inverse_matrix <- function() {
                return (i)
        }
        list(set_matix = set_matrix, 
             get_matrix = get_matrix, 
             set_inverse_matrix = set_inverse_matrix, 
             get_inverse_matrix = get_inverse_matrix)

}


## CacheSolve function tries to firstly check whether the matrix is already computed to inverse matrix. If so, it prints out the message; "Inverse matrix is already cached!" and prints out the calculated inverse_matrix. If the matrix is not computed to inverse matrix, it gets the set matrix from MakeCacheMatrix function using get_matrix, stores it in a variable and computes the inverse matrix of it. Then, finally, it stores it to the set_inverse_matrix so that later, it can be retrieved by using get_inverse_matrix function. 

cacheSolve <- function(x, ...) {
        i <- x$get_inverse_matrix()
        if(!is.null(i)){
                print("Inverse matrix is already cached!")
                return(i)
        }
        data <- x$get_matrix()
        i <- solve(data)
        x$set_inverse_matrix(i)
        return(i)
}

