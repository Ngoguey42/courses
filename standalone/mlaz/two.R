##****************************************************************************##
##                                                                            ##
##                                                                            ##
##   two.R                                                                    ##
##                                                                            ##
##   By: ngoguey <ngoguey@airware.com>                                        ##
##                                                                            ##
##   Created: 2017/04/16 18:26:25 by ngoguey                                  ##
##   Updated: 2017/05/08 16:06:13 by ngoguey                                  ##
##                                                                            ##
##****************************************************************************##

library(caTools)

## LOAD DATASET ************************************************************* **
dataset = read.csv('two_data.csv')

## TEST / TRAINING PARTITION ************************************************ **
set.seed(123)
split_mask = sample.split(dataset, SplitRatio=2/3)
training_set = subset(dataset, split_mask)
test_set = subset(dataset, split_mask == FALSE)
print('training_set:')
summary(training_set)
print('test_set:')
summary(test_set)

regressor = lm(
    formula=Salary ~ YearsExperience,
    data=training_set
    )
print('regressor (num *: significance of the variable)')
summary(regressor)

y_pred = predict(regressor, newdata=test_set)
print('y_pred')
summary(y_pred)

## PLOT ********************************************************************* **
## install.packages('ggplot2', repos = "http://cran.us.r-project.org")
library(ggplot2)
ggplot() +
    geom_point(
        aes(x=training_set$YearsExperience, y=training_set$Salary),
        colour='red'
    ) +
    geom_point(
        aes(x=test_set$YearsExperience, y=test_set$Salary),
        colour='black'
    ) +
    geom_line(
        aes(x=training_set$YearsExperience, y=predict(regressor, newdata=training_set)),
        colour='blue'
    ) +
    ggtitle('Salary linear model (Training set)') +
    xlab('YearsExperience') +
    ylab('Salary')
