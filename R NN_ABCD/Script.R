#install.packages('neuralnet')
library("neuralnet")

A <- runif(50, 0, 100)
B <- data.frame(A, C = sqrt(A))
print(D <- neuralnet(C ~ A, B, hidden = 10, threshold = 0.01))
compute(D, 1:10)$net.result
