##****************************************************************************##
##                                                                            ##
##                                                                            ##
##   one.R                                                                    ##
##                                                                            ##
##   By: ngoguey <ngoguey@airware.com>                                        ##
##                                                                            ##
##   Created: 2017/04/14 18:08:01 by ngoguey                                  ##
##   Updated: 2017/05/08 13:08:19 by ngoguey                                  ##
##                                                                            ##
##****************************************************************************##

## install.packages('caTools', repos = "http://cran.us.r-project.org")
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

## CONVERT CATEGORICAL VARIABLES TO DIGITS ********************************** **
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

## TEST / TRAINING PARTITION ************************************************ **
set.seed(42)
split_mask = sample.split(dataset, SplitRatio=0.8)
training_set = subset(dataset, split_mask)
test_set = subset(dataset, split_mask == FALSE)
print('training_set:')
print(training_set)
print('test_set:')
print(test_set)

## FEATURE SCALING ********************************************************** **
training_set[, 2:3] = scale(training_set[, 2:3])
test_set[, 2:3] = scale(test_set[, 2:3])

print('training_set:')
print(training_set)
print('test_set:')
print(test_set)
