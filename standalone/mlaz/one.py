# **************************************************************************** #
#                                                                              #
#                                                                              #
#    one.py                                                                    #
#                                                                              #
#    By: ngoguey <ngoguey@airware.com>                                         #
#                                                                              #
#    Created: 2017/04/14 18:07:57 by ngoguey                                   #
#    Updated: 2017/04/14 18:57:49 by ngoguey                                   #
#                                                                              #
# **************************************************************************** #

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.cross_validation import train_test_split
from sklearn.preprocessing import Imputer, LabelEncoder, OneHotEncoder

np.set_printoptions(linewidth=200, precision=3, suppress=True)

def dump(str_):
    v = eval(str_)
    print("******************************".format())
    s = "******** {}: {}\n{}".format(str_, type(v), v)
    s = s.replace('\n', '\n******** ')
    print(s)
    print("******************************".format())

# LOAD DATASET ************************************************************** **
dataset = pd.read_csv('one_data.csv')
dump('dataset')

x = dataset.iloc[:, 0:-1].values
dump('x')
y = dataset.iloc[:, -1].values
dump('y')

# HANDLE MISSING VALUES ***************************************************** **
print("fitting imputer to missing data".format())
imp = Imputer(missing_values='NaN', strategy='mean', axis=0)
imp = imp.fit(x[:, [1, 2]])
x[:, [1, 2]] = imp.transform(x[:, [1, 2]])
dump('x')

# CONVERT CATEGORICAL VARIABLES TO DIGITS *********************************** **
print("converting categorical variable to enum".format())
enc_x = LabelEncoder()
x[:, 0] = enc_x.fit_transform(x[:, 0])
dump('x')

print("converting enum to one-hot scheme".format())
ohenc_x = OneHotEncoder(categorical_features=[0])
dump('ohenc_x')
x = ohenc_x.fit_transform(x).toarray()
dump('x')

enc_y = LabelEncoder()
y = enc_y.fit_transform(y)
dump('y')




exit()

x_train, x_test, y_train, y_test = train_test_split(
    x, y, test_size=0.2, random_state = 0)
dump('x_train')
dump('x_test')
dump('y_train')
dump('y_test')

# Feature Scaling
"""from sklearn.preprocessing import StandardScaler
sc_X = StandardScaler()
X_train = sc_X.fit_transform(X_train)
X_test = sc_X.transform(X_test)
sc_y = StandardScaler()
y_train = sc_y.fit_transform(y_train)"""
