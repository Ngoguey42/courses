# **************************************************************************** #
#                                                                              #
#                                                                              #
#    two.py                                                                    #
#                                                                              #
#    By: ngoguey <ngoguey@airware.com>                                         #
#                                                                              #
#    Created: 2017/04/16 16:26:49 by ngoguey                                   #
#    Updated: 2017/05/08 16:06:20 by ngoguey                                   #
#                                                                              #
# **************************************************************************** #

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.cross_validation import train_test_split
# from sklearn.preprocessing import Imputer, LabelEncoder, OneHotEncoder, StandardScaler
import sklearn.linear_model as sklm

np.set_printoptions(linewidth=200, precision=3, suppress=True)

def dump(str_):
    v = eval(str_)
    print("******************************".format())
    s = "******** {}: {}\n{}".format(str_, type(v), v)
    s = s.replace('\n', '\n******** ')
    print(s)
    print("******************************".format())

dataset = pd.read_csv('two_data.csv')
x = dataset.iloc[:, 0:-1].values
y = dataset.iloc[:, -1].values
dump('dataset')

x_train, x_test, y_train, y_test = train_test_split(
    x, y, test_size=1/3, random_state=0)
dump('np.c_[np.arange(y_train.size), x_train, y_train]')
dump('np.c_[np.arange(y_test.size), x_test, y_test]')

regressor = sklm.LinearRegression(
    fit_intercept=True, normalize=True, copy_X=True, n_jobs=3)
regressor.fit(x_train, y_train)
dump('regressor.intercept_, regressor.coef_')

yhat_test = regressor.predict(x_test)

mae = np.abs(yhat_test - y_test).mean()
r_squared = regressor.score(x_test, y_test)
dump('mae, y_test.mean(), mae / y_test.mean() * 100., r_squared')

# PLOT ********************************************************************** **
xx = np.linspace(x.min(), x.max(), 50)
yy = np.poly1d([np.asscalar(regressor.coef_), regressor.intercept_])(xx)

plt.scatter(x_train, y_train, c='r', label='Train set')
plt.scatter(x_test, y_test, c='b', label='Test set')
plt.plot(xx, yy, '-k', label='Regression line')
plt.legend(loc='best')
plt.show()
