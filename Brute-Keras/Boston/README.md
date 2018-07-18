# Introduction
Keras, two hidden layer, wide neural network implementation for price regression based on housing explicit and implicit variables. The purpose of this project was to do the bare minimum of exploring a dataset and producing results in the fastest possible method. The bare minimum will be used to create a personal package for data exploration and running machine learning projects quickly. 

# Workflow in project
File separates filled data from missing data.     
Missing data is removed and not addressed.     
Remaining column data are separated by type.      
Categorical variables are converted to dummies.      
Integers and Floats are not normalized and not transformed.      
Outliers are not addressed.     
No feature extraction addressed. i.e. square footage were not summed, quality and square footage were not combined for a polynomial feature.      
PCA was run to reduce dimensionality from 28x to 100.       

# Results
Final performance yields a MSE of 1.6E9.     
A much faster similar implementation using sklearn yields a MSE of 1.1E9.

# Conclusion
Neural Net and Linear Regression can be used as a rough estimate, but the linear regression handles the results to a much greater accuracy. Accuracy could be greatly increased by addressing the unaddressed aspects listed in workflow. For a brute force project, it was reassuring to see that the results were comparable to the actual results for lower priced housing. The functions did what was necessary and this procedure will be a great skeleton for other projects. 
