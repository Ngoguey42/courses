# **************************************************************************** #
#                                                                              #
#                                                                              #
#    three.py                                                                  #
#                                                                              #
#    By: ngoguey <ngoguey@airware.com>                                         #
#                                                                              #
#    Created: 2017/05/08 16:13:18 by ngoguey                                   #
#    Updated: 2017/05/12 19:43:52 by ngoguey                                   #
#                                                                              #
# **************************************************************************** #

import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
from sklearn.cross_validation import train_test_split
from sklearn.preprocessing import Imputer, LabelEncoder, OneHotEncoder, StandardScaler

np.set_printoptions(linewidth=200, precision=3, suppress=True)

def dump(str_):
    v = eval(str_)
    print("******************************".format())
    s = "******** {}: {}\n{}".format(str_, type(v), v)
    s = s.replace('\n', '\n******** ')
    print(s)
    print("******************************".format())

# LOAD DATASET ************************************************************** **
dataset = pd.read_csv('three_data.csv')
# dump('dataset')

x = dataset[['R&D Spend', 'Administration', 'Marketing Spend', 'State']].copy()
y = dataset['Profit'].copy()
dump('x.head()')
del dataset

# CONVERT CATEGORICAL VARIABLES TO DIGITS *********************************** **
print("converting categorical variable to enum".format())
enc_x = LabelEncoder()
x.loc[:, 'State'] = enc_x.fit_transform(x.State)
dump('x.head()')

print("converting enum to one-hot scheme".format())
ohenc_x = OneHotEncoder(n_values='auto', categorical_features=[3], sparse=False)
dump('ohenc_x')

tmp = ohenc_x.fit_transform(x)
dump('tmp')
# x.loc[:, 'State']
# dump('x.head()')

# # TEST / TRAINING PARTITION ************************************************* **
# x_train, x_test, y_train, y_test = train_test_split(
#     x, y, test_size=0.2, random_state=42)
# dump('x_train')
# dump('x_test')
# dump('y_train')
# dump('y_test')

# # FEATURE SCALING *********************************************************** **
# sc_x = StandardScaler()
# x_train = sc_x.fit_transform(x_train)
# x_test = sc_x.transform(x_test)
# dump('x_train')
# dump('x_test')
# dump('y_train')
# dump('y_test')
