n<- 10
p<- 0.25
x<- seq(0,10,by=1)
y<- dbinom(x,n,p) 
xp<- x*y
# Calculate the expected value E[x] using the normal approach.
expectedValue0 <- sum(xp)
# Calculate the expected value E[x] using the property.
expectedValue1 <- n*p
# Check if they are the same.
print(paste("Expected value E[x]= ",expectedValue0))
print(paste("Expected value E[x]= n*p = ",expectedValue1))

plot(x,y)
