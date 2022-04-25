# Name : Anish Sarkar
# Reg no : 19BCE1278

rm(list=ls())
xs <- seq(-1,0.33,len=20) 
xs

f <-  function(x) {3*x^2 + 2*x + 1}

# plot the function 
plot(xs , f (xs), type="l",xlab="x",ylab=expression(1.2(x-2)^2 +3.2)) 

# calculate the gradient df/dx

grad <- function(x){
  3*2*x + 2
}

x <- 0.1 
xtrace <- x  
ftrace <- f(x) 
stepFactor <- 0.01 # learning rate 'alpha'
for (step in 1:5000) {
  x <- x - stepFactor*grad(x) # gradient descent update
  xtrace <- c(xtrace,x) # update for graph
  ftrace <- c(ftrace,f(x)) # update for graph
}

lines ( xtrace , ftrace , type="b",col="blue") # type=b (both points & lines)
text (0.5,6, "Gradient Descent",col="red",pos= 4)

# print final value of x
print(x) # x converges to 2.0
text(-0.33,1,"x=-0.333",col="red",pos=1)
text(-0.33,1.2,"(Global minimum)",col="red",pos=3)

