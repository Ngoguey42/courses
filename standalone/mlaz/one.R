##****************************************************************************##
##                                                                            ##
##                                                                            ##
##   one.R                                                                    ##
##                                                                            ##
##   By: ngoguey <ngoguey@airware.com>                                        ##
##                                                                            ##
##   Created: 2017/04/14 18:08:01 by ngoguey                                  ##
##   Updated: 2017/04/14 18:57:25 by ngoguey                                  ##
##                                                                            ##
##****************************************************************************##

library(caTools)

## LOAD DATASET ************************************************************* **
dataset = read.csv('one_data.csv')
print('dataset:')
print(dataset)

## HANDLE MISSING VALUES **************************************************** **
dataset$Age = ifelse(
    is.na(dataset$Age), # predicate, is value missing
    ave(dataset$Age, FUN=function(x) mean(x, na.rm=TRUE)), # if true
    dataset$Age # if false
)
dataset$Salary = ifelse(
    is.na(dataset$Salary), # predicate, is value missing
    ave(dataset$Salary, FUN=function(x) mean(x, na.rm=TRUE)), # if true
    dataset$Salary # if false
)
print('dataset:')
print(dataset)

# CONVERT CATEGORICAL VARIABLES TO DIGITS *********************************** **
dataset$Country = factor(
    dataset$Country,
    levels=c('France', 'Spain', 'Germany'),
    labels=c(1, 2, 3)
)
dataset$Purchased = factor(
    dataset$Purchased,
    levels = c('No', 'Yes'),
    labels = c(0, 1)
)
print('dataset:')
print(dataset)




quit()

set.seed(123)
split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)
