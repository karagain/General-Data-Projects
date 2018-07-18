Keras, two hidden layer, wide neural network implementation for price regression. 

File separates filled data from missing data.
Missing data is removed and not addressed.
Remaining column data are separated by type. 
Categorical variables are converted to dummies. 
Integers and Floats are not normalized and not transformed. 
Outliers are not addressed

PCA is run to reduce dimensionality from 28x to 100. 

Final performance yields a MSE of 1.6E9.
A much faster similar implementation using sklearn yields a MSE of 1.1E9.

Both can be used as a rough estimate, but the linear regression handles the results to a much greater accuracy. 
