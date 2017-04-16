<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                                         -->
<!-- Machine_Learning_AZ_Hands-On_Python_R_...                               -->
<!--                                                                         -->
<!-- By: ngoguey <ngoguey@airware.com>                                       -->
<!--                                                                         -->
<!-- Created: 2017/04/14 13:05:23 by ngoguey                                 -->
<!-- Updated: 2017/04/16 17:19:53 by ngoguey                                 -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> - Udemy
> - Kirill Eremenko
> - Hadelin de Ponteves
> - SuperDataScience Team
> - Cost 10 euro
> - https://www.udemy.com/machinelearning/
> - https://www.udemy.com/machinelearning/learn/v4/overview
> - https://www.superdatascience.com/machine-learning/
> - 40h32
> - 11 Part (~3h41 each)
> - 40 Section (~1h01 each)
> - 7 Quiz
> - 257 Video (~9m28 each)
> - 18 Documents

********************************************************************************
********************************************************************************

# Part 0: Intro
## Section 1: Welcome to the course! (5 video)
### Video 1: Applications of Machine Learning (03:22 00:03:22/40:32:42 0%)
ras

### Video 2: Why Machine Learning is the Future (06:37 00:09:59/40:32:42 0%)
- Metaphore
  - B, word
  - kB, page
  - mB, book
  - gB, genome
  - tB, 1 life of HD video
  - petaB, all the Amazonian trees to paper and to books
  - exaB
    - 130eB ''''''produced'''''' by humanity up to 2005
	- 40900eB ''''''produced'''''' by humanity up to ~2020

### Video 3: Installing R and R Studio (MAC & Windows) (05:40 00:15:39/40:32:42 1%)
- R installed with windows installer
- ESS installed this way
```sh
cd configurations
git submodule add https://github.com/emacs-ess/ESS
cd ESS/lisp
make
# Plus update emacs conf file
```

### Video 4: Installing Python and Anaconda (MAC & Windows) (07:30 00:23:10/40:32:42 1%)
ras

### Document 5: BONUS: Meet your instructors
ras

# Part 1: Data Preprocessing
## Section 2: Part 1: Data Preprocessing (11 video)
### Video 6: Welcome to Part 1 - Data Preprocessing (01:35 00:24:45/40:32:42 1%)
ras

### Video 7: Get the dataset (06:58 00:31:43/40:32:42 1%)
- Use independent variable to predict a dependent variable

### Video 8: Importing the Libraries (05:20 00:37:03/40:32:42 2%)
- Run in R
```R
install.packages("caTools")
```

### Video 9: Importing the Dataset (11:54 00:48:57/40:32:42 2%)
- [mlaz/one.py](mlaz/one.py)
- [mlaz/one.R](mlaz/one.R)

### Document 10: For Python learners, summary of Object-oriented programming: classes & objects
ras

### Video 11: Missing Data (15:57 01:04:54/40:32:42 3%)
- [mlaz/one.py](mlaz/one.py)
- [mlaz/one.R](mlaz/one.R)
- `sklearn.preprocessing.Imputer` to create missing data

### Video 12: Categorical Data (18:00 01:22:55/40:32:42 3%)
- [mlaz/one.py](mlaz/one.py)
- [mlaz/one.R](mlaz/one.R)
- `Categorical variable`: enum
- `dummy encoding` aka `one-hot scheme` aka `one-of-K scheme`: turn an enum to boolean matrix of |enum| columns
- python: `OneHotEncoder`
- python: `LabelEncoder`
- R: `label`

### Video 13: Splitting the Dataset into the Training set and Test set (17:37 01:40:32/40:32:42 4%)
- [mlaz/one.py](mlaz/one.py)
- [mlaz/one.R](mlaz/one.R)

### Video 14: Feature Scaling (15:36 01:56:08/40:32:42 5%)
- [mlaz/one.py](mlaz/one.py)
- [mlaz/one.R](mlaz/one.R)
- Some machine learning model are based on Euclidean distance
- Standardisation vs normalisation

### Video 15: And here is our Data Preprocessing Template! (08:48 02:04:56/40:32:42 5%)
- [mlaz/one.py](mlaz/one.py)
- [mlaz/one.R](mlaz/one.R)

### Quiz 1: Data Preprocessing
skip

********************************************************************************
********************************************************************************

# Part 2: Regression
## Section 3: Part 2: Regression (1 video)
### Document 16: Welcome to Part 2 - Regression
ras

## Section 4: Simple Linear Regression (13 video)
### Video 17: How to get the dataset (03:18 02:08:14/40:32:42 5%)
ras

### Video 18: Dataset + Business Problem Description (02:56 02:11:10/40:32:42 5%)
ras

### Video 19: Simple Linear Regression Intuition - Step 1 (05:45 02:16:55/40:32:42 6%)
- `y = a + bx`

### Video 20: Simple Linear Regression Intuition - Step 2 (03:08 02:20:04/40:32:42 6%)
- Ordinary least squares method
  - `y_i` value
  - `hat y_i` model value
  - `sum_i(y - hat y)^2` mean square error

### Video 21: Simple Linear Regression in Python - Step 1 (09:55 02:30:00/40:32:42 6%)
- [mlaz/two.py](mlaz/two.py)

### Video 22: Simple Linear Regression in Python - Step 2 (08:19 02:38:18/40:32:42 7%)
- [mlaz/two.py](mlaz/two.py)

### Video 23: Simple Linear Regression in Python - Step 3 (06:43 02:45:01/40:32:42 7%)
- [mlaz/two.py](mlaz/two.py)

### Video 24: Simple Linear Regression in Python - Step 4 (14:50 02:59:51/40:32:42 7%)
- [mlaz/two.py](mlaz/two.py)

### Video 25: Simple Linear Regression in R - Step 1 (04:40 03:04:31/40:32:42 8%)
### Video 26: Simple Linear Regression in R - Step 2 (05:58 03:10:29/40:32:42 8%)
### Video 27: Simple Linear Regression in R - Step 3 (03:38 03:14:07/40:32:42 8%)
### Video 28: Simple Linear Regression in R - Step 4 (15:55 03:30:02/40:32:42 9%)
### Quiz 2: Simple Linear Regression
## Section 5: Multiple Linear Regression (19 video)
### Video 29: How to get the dataset (03:18 03:33:20/40:32:42 9%)
### Video 30: Dataset + Business Problem Description (03:44 03:37:04/40:32:42 9%)
### Video 31: Multiple Linear Regression Intuition - Step 1 (01:02 03:38:06/40:32:42 9%)
### Video 32: Multiple Linear Regression Intuition - Step 2 (01:00 03:39:06/40:32:42 9%)
### Video 33: Multiple Linear Regression Intuition - Step 3 (07:21 03:46:27/40:32:42 9%)
### Video 34: Multiple Linear Regression Intuition - Step 4 (02:09 03:48:37/40:32:42 9%)
### Video 35: Multiple Linear Regression Intuition - Step 5 (15:41 04:04:18/40:32:42 10%)
### Video 36: Multiple Linear Regression in Python - Step 1 (15:57 04:20:15/40:32:42 11%)
### Video 37: Multiple Linear Regression in Python - Step 2 (02:56 04:23:11/40:32:42 11%)
### Video 38: Multiple Linear Regression in Python - Step 3 (05:28 04:28:39/40:32:42 11%)
### Video 39: Multiple Linear Regression in Python - Backward Elimination - Preparation (13:14 04:41:53/40:32:42 12%)
### Video 40: Multiple Linear Regression in Python - Backward Elimination - HOMEWORK ! (12:40 04:54:33/40:32:42 12%)
### Video 41: Multiple Linear Regression in Python - Backward Elimination - Homework Solution (09:09 05:03:43/40:32:42 12%)
### Video 42: Multiple Linear Regression in R - Step 1 (07:50 05:11:33/40:32:42 13%)
### Video 43: Multiple Linear Regression in R - Step 2 (10:25 05:21:58/40:32:42 13%)
### Video 44: Multiple Linear Regression in R - Step 3 (04:26 05:26:24/40:32:42 13%)
### Video 45: Multiple Linear Regression in R - Backward Elimination - HOMEWORK ! (17:51 05:44:15/40:32:42 14%)
### Video 46: Multiple Linear Regression in R - Backward Elimination - Homework Solution (07:33 05:51:48/40:32:42 14%)
### Quiz 3: Multiple Linear Regression
## Section 6: Polynomial Regression (12 video)
### Video 47: Polynomial Regression Intuition (05:08 05:56:56/40:32:42 15%)
### Video 48: How to get the dataset (03:18 06:00:14/40:32:42 15%)
### Video 49: Polynomial Regression in Python - Step 1 (11:38 06:11:52/40:32:42 15%)
### Video 50: Polynomial Regression in Python - Step 2 (11:45 06:23:37/40:32:42 16%)
### Video 51: Polynomial Regression in Python - Step 3 (19:57 06:43:34/40:32:42 17%)
### Video 52: Polynomial Regression in Python - Step 4 (05:45 06:49:20/40:32:42 17%)
### Video 53: Python Regression Template (10:58 07:00:17/40:32:42 17%)
### Video 54: Polynomial Regression in R - Step 1 (09:12 07:09:29/40:32:42 18%)
### Video 55: Polynomial Regression in R - Step 2 (09:58 07:19:27/40:32:42 18%)
### Video 56: Polynomial Regression in R - Step 3 (19:53 07:39:21/40:32:42 19%)
### Video 57: Polynomial Regression in R - Step 4 (09:35 07:48:57/40:32:42 19%)
### Video 58: R Regression Template (11:58 08:00:54/40:32:42 20%)
## Section 7: Support Vector Regression (SVR) (3 video)
### Video 59: How to get the dataset (03:18 08:04:13/40:32:42 20%)
### Video 60: SVR in Python (19:57 08:24:10/40:32:42 21%)
### Video 61: SVR in R (11:44 08:35:53/40:32:42 21%)
## Section 8: Decision Tree Regression (4 video)
### Video 62: Decision Tree Regression Intuition (11:05 08:47:00/40:32:42 22%)
### Video 63: How to get the dataset (03:18 08:50:17/40:32:42 22%)
### Video 64: Decision Tree Regression in Python (14:45 09:05:02/40:32:42 22%)
### Video 65: Decision Tree Regression in R (19:53 09:24:57/40:32:42 23%)
## Section 9: Random Forest Regression (4 video)
### Video 66: Random Forest Regression Intuition (06:44 09:31:40/40:32:42 23%)
### Video 67: How to get the dataset (03:18 09:34:58/40:32:42 24%)
### Video 68: Random Forest Regression in Python (16:44 09:51:43/40:32:42 24%)
### Video 69: Random Forest Regression in R (17:42 10:09:25/40:32:42 25%)
## Section 10: Evaluating Regression Models Performance (5 video)
### Video 70: R-Squared Intuition (05:11 10:14:35/40:32:42 25%)
### Video 71: Adjusted R-Squared Intuition (09:56 10:24:31/40:32:42 26%)
### Video 72: Evaluating Regression Models Performance - Homework's Final Part (08:54 10:33:26/40:32:42 26%)
### Video 73: Interpreting Linear Regression Coefficients (09:16 10:42:42/40:32:42 26%)
### Document 74: Conclusion of Part 2 - Regression

********************************************************************************
********************************************************************************

# Part 3: Classification
## Section 11: Part 3: Classification (1 video)
### Document 75: Welcome to Part 3 - Classification
## Section 12: Logistic Regression (15 video)
### Video 76: Logistic Regression Intuition (17:06 10:59:48/40:32:42 27%)
### Video 77: How to get the dataset (03:18 11:03:06/40:32:42 27%)
### Video 78: Logistic Regression in Python - Step 1 (05:47 11:08:53/40:32:42 27%)
### Video 79: Logistic Regression in Python - Step 2 (03:24 11:12:17/40:32:42 28%)
### Video 80: Logistic Regression in Python - Step 3 (02:35 11:14:52/40:32:42 28%)
### Video 81: Logistic Regression in Python - Step 4 (04:33 11:19:25/40:32:42 28%)
### Video 82: Logistic Regression in Python - Step 5 (19:38 11:39:04/40:32:42 29%)
### Video 83: Python Classification Template (03:53 11:42:57/40:32:42 29%)
### Video 84: Logistic Regression in R - Step 1 (05:58 11:48:55/40:32:42 29%)
### Video 85: Logistic Regression in R - Step 2 (02:58 11:51:53/40:32:42 29%)
### Video 86: Logistic Regression in R - Step 3 (05:23 11:57:16/40:32:42 29%)
### Video 87: Logistic Regression in R - Step 4 (02:48 12:00:04/40:32:42 30%)
### Video 88: Logistic Regression in R - Step 5 (19:23 12:19:28/40:32:42 30%)
### Video 89: R Classification Template (04:16 12:23:44/40:32:42 31%)
### Quiz 4: Logistic Regression
## Section 13: K-Nearest Neighbors (K-NN) (5 video)
### Video 90: K-Nearest Neighbor Intuition (04:52 12:28:36/40:32:42 31%)
### Video 91: How to get the dataset (03:18 12:31:54/40:32:42 31%)
### Video 92: K-NN in Python (14:09 12:46:04/40:32:42 31%)
### Video 93: K-NN in R (15:45 13:01:50/40:32:42 32%)
### Quiz 5: K-Nearest Neighbor
## Section 14: Support Vector Machine (SVM) (4 video)
### Video 94: SVM Intuition (09:49 13:11:39/40:32:42 33%)
### Video 95: How to get the dataset (03:18 13:14:57/40:32:42 33%)
### Video 96: SVM in Python (12:24 13:27:21/40:32:42 33%)
### Video 97: SVM in R (12:09 13:39:30/40:32:42 34%)
 SVM.zip
## Section 15: Kernel SVM (7 video)
### Video 98: Kernel SVM Intuition (03:17 13:42:47/40:32:42 34%)
### Video 99: Mapping to a higher dimension (07:50 13:50:37/40:32:42 34%)
### Video 100: The Kernel Trick (12:19 14:02:57/40:32:42 35%)
### Video 101: Types of Kernel Functions (03:47 14:06:44/40:32:42 35%)
### Video 102: How to get the dataset (03:18 14:10:02/40:32:42 35%)
### Video 103: Kernel SVM in Python (17:52 14:27:54/40:32:42 36%)
### Video 104: Kernel SVM in R (16:34 14:44:28/40:32:42 36%)
## Section 16: Naive Bayes (7 video)
### Video 105: Bayes Theorem (20:25 15:04:53/40:32:42 37%)
### Video 106: Naive Bayes Intuition (14:03 15:18:56/40:32:42 38%)
### Video 107: Naive Bayes Intuition (Challenge Reveal) (06:03 15:25:00/40:32:42 38%)
### Video 108: Naive Bayes Intuition (Extras) (09:41 15:34:41/40:32:42 38%)
### Video 109: How to get the dataset (03:18 15:37:59/40:32:42 39%)
### Video 110: Naive Bayes in Python (09:14 15:47:13/40:32:42 39%)
### Video 111: Naive Bayes in R (14:52 16:02:06/40:32:42 40%)
## Section 17: Decision Tree Classification (4 video)
### Video 112: Decision Tree Classification Intuition (08:07 16:10:14/40:32:42 40%)
### Video 113: How to get the dataset (03:18 16:13:32/40:32:42 40%)
### Video 114: Decision Tree Classification in Python (12:34 16:26:06/40:32:42 41%)
### Video 115: Decision Tree Classification in R (19:47 16:45:53/40:32:42 41%)
## Section 18: Random Forest Classification (4 video)
### Video 116: Random Forest Classification Intuition (04:28 16:50:21/40:32:42 42%)
### Video 117: How to get the dataset (03:18 16:53:39/40:32:42 42%)
### Video 118: Random Forest Classification in Python (19:53 17:13:33/40:32:42 42%)
### Video 119: Random Forest Classification in R (19:56 17:33:29/40:32:42 43%)
## Section 19: Evaluating Classification Models Performance (6 video)
### Video 120: False Positives & False Negatives (07:57 17:41:26/40:32:42 44%)
### Video 121: Confusion Matrix (04:57 17:46:23/40:32:42 44%)
### Video 122: Accuracy Paradox (02:12 17:48:35/40:32:42 44%)
### Video 123: CAP Curve (11:16 17:59:51/40:32:42 44%)
### Video 124: CAP Curve Analysis (06:19 18:06:10/40:32:42 45%)
### Document 125: Conclusion of Part 3 - Classification

# Part 4: Clustering
## Section 20: Part 4: Clustering (1 video)
### Document 126: Welcome to Part 4 - Clustering
## Section 21: K-Means Clustering (7 video)
### Video 127: K-Means Clustering Intuition (14:17 18:20:27/40:32:42 45%)
### Video 128: K-Means Random Initialization Trap (07:48 18:28:15/40:32:42 46%)
### Video 129: K-Means Selecting The Number Of Clusters (11:51 18:40:05/40:32:42 46%)
### Video 130: How to get the dataset (03:18 18:43:24/40:32:42 46%)
### Video 131: K-Means Clustering in Python (17:55 19:01:19/40:32:42 47%)
### Video 132: K-Means Clustering in R (11:47 19:13:06/40:32:42 47%)
### Quiz 6: K-Means Clustering
## Section 22: Hierarchical Clustering (16 video)
### Video 133: Hierarchical Clustering Intuition (08:47 19:21:53/40:32:42 48%)
### Video 134: Hierarchical Clustering How Dendrograms Work (08:47 19:30:40/40:32:42 48%)
### Video 135: Hierarchical Clustering Using Dendrograms (11:21 19:42:01/40:32:42 49%)
### Video 136: How to get the dataset (03:18 19:45:18/40:32:42 49%)
### Video 137: HC in Python - Step 1 (04:57 19:50:16/40:32:42 49%)
### Video 138: HC in Python - Step 2 (06:33 19:56:49/40:32:42 49%)
### Video 139: HC in Python - Step 3 (05:28 20:02:17/40:32:42 49%)
### Video 140: HC in Python - Step 4 (04:29 20:06:46/40:32:42 50%)
### Video 141: HC in Python - Step 5 (04:04 20:10:51/40:32:42 50%)
### Video 142: HC in R - Step 1 (03:45 20:14:36/40:32:42 50%)
### Video 143: HC in R - Step 2 (05:23 20:19:59/40:32:42 50%)
### Video 144: HC in R - Step 3 (03:18 20:23:17/40:32:42 50%)
### Video 145: HC in R - Step 4 (02:45 20:26:01/40:32:42 50%)
### Video 146: HC in R - Step 5 (02:33 20:28:35/40:32:42 51%)
### Quiz 7: Hierarchical Clustering
### Document 147: Conclusion of Part 4 - Clustering
# Part 5: Association Rule Learning
## Section 23: Part 5: Association Rule Learning (1 video)
### Document 148: Welcome to Part 5 - Association Rule Learning
## Section 24: Apriori (8 video)
### Video 149: Apriori Intuition (18:12 20:46:48/40:32:42 51%)
### Video 150: How to get the dataset (03:18 20:50:06/40:32:42 51%)
### Video 151: Apriori in R - Step 1 (19:53 21:09:59/40:32:42 52%)
### Video 152: Apriori in R - Step 2 (14:23 21:24:23/40:32:42 53%)
### Video 153: Apriori in R - Step 3 (19:17 21:43:40/40:32:42 54%)
### Video 154: Apriori in Python - Step 1 (17:57 22:01:38/40:32:42 54%)
### Video 155: Apriori in Python - Step 2 (14:38 22:16:16/40:32:42 55%)
### Video 156: Apriori in Python - Step 3 (12:05 22:28:22/40:32:42 55%)
## Section 25: Eclat (3 video)
### Video 157: Eclat Intuition (06:04 22:34:27/40:32:42 56%)
### Video 158: How to get the dataset (03:18 22:37:45/40:32:42 56%)
### Video 159: Eclat in R (10:09 22:47:54/40:32:42 56%)
 Eclat.zip
# Part 6: Reinforcement Learning
## Section 26: Part 6: Reinforcement Learning (1 video)
### Document 160: Welcome to Part 6 - Reinforcement Learning
## Section 27: Upper Confidence Bound (UCB) (11 video)
### Video 161: The Multi-Armed Bandit Problem (15:36 23:03:30/40:32:42 57%)
### Video 162: Upper Confidence Bound (UCB) Intuition (14:52 23:18:23/40:32:42 57%)
### Video 163: How to get the dataset (03:18 23:21:41/40:32:42 58%)
### Video 164: Upper Confidence Bound in Python - Step 1 (14:41 23:36:22/40:32:42 58%)
### Video 165: Upper Confidence Bound in Python - Step 2 (18:08 23:54:31/40:32:42 59%)
### Video 166: Upper Confidence Bound in Python - Step 3 (18:47 24:13:18/40:32:42 60%)
### Video 167: Upper Confidence Bound in Python - Step 4 (03:53 24:17:11/40:32:42 60%)
### Video 168: Upper Confidence Bound in R - Step 1 (13:39 24:30:50/40:32:42 60%)
### Video 169: Upper Confidence Bound in R - Step 2 (15:58 24:46:48/40:32:42 61%)
### Video 170: Upper Confidence Bound in R - Step 3 (17:37 25:04:25/40:32:42 62%)
### Video 171: Upper Confidence Bound in R - Step 4 (03:18 25:07:43/40:32:42 62%)
## Section 28: Thompson Sampling (7 video)
### Video 172: Thompson Sampling Intuition (19:12 25:26:55/40:32:42 63%)
### Video 173: Algorithm Comparison: UCB vs Thompson Sampling (08:12 25:35:07/40:32:42 63%)
### Video 174: How to get the dataset (03:18 25:38:25/40:32:42 63%)
### Video 175: Thompson Sampling in Python - Step 1 (19:45 25:58:11/40:32:42 64%)
### Video 176: Thompson Sampling in Python - Step 2 (03:42 26:01:53/40:32:42 64%)
### Video 177: Thompson Sampling in R - Step 1 (19:00 26:20:54/40:32:42 65%)
### Video 178: Thompson Sampling in R - Step 2 (03:27 26:24:21/40:32:42 65%)
# Part 7: Natural Language Processing
## Section 29: Part 7: Natural Language Processing (24 video)
### Document 179: Welcome to Part 7 - Natural Language Processing
### Video 180: How to get the dataset (03:18 26:27:39/40:32:42 65%)
### Video 181: Natural Language Processing in Python - Step 1 (12:42 26:40:21/40:32:42 66%)
### Video 182: Natural Language Processing in Python - Step 2 (10:55 26:51:16/40:32:42 66%)
### Video 183: Natural Language Processing in Python - Step 3 (01:41 26:52:57/40:32:42 66%)
### Video 184: Natural Language Processing in Python - Step 4 (12:09 27:05:07/40:32:42 67%)
### Video 185: Natural Language Processing in Python - Step 5 (07:16 27:12:23/40:32:42 67%)
### Video 186: Natural Language Processing in Python - Step 6 (03:04 27:15:27/40:32:42 67%)
### Video 187: Natural Language Processing in Python - Step 7 (07:23 27:22:50/40:32:42 68%)
### Video 188: Natural Language Processing in Python - Step 8 (16:57 27:39:47/40:32:42 68%)
### Video 189: Natural Language Processing in Python - Step 9 (05:58 27:45:45/40:32:42 68%)
### Video 190: Natural Language Processing in Python - Step 10 (09:56 27:55:41/40:32:42 69%)
### Document 191: Homework Challenge
### Video 192: Natural Language Processing in R - Step 1 (16:34 28:12:16/40:32:42 70%)
### Video 193: Natural Language Processing in R - Step 2 (08:39 28:20:55/40:32:42 70%)
### Video 194: Natural Language Processing in R - Step 3 (06:27 28:27:22/40:32:42 70%)
### Video 195: Natural Language Processing in R - Step 4 (02:57 28:30:18/40:32:42 70%)
### Video 196: Natural Language Processing in R - Step 5 (02:05 28:32:23/40:32:42 70%)
### Video 197: Natural Language Processing in R - Step 6 (05:49 28:38:13/40:32:42 71%)
### Video 198: Natural Language Processing in R - Step 7 (03:26 28:41:39/40:32:42 71%)
### Video 199: Natural Language Processing in R - Step 8 (05:20 28:46:59/40:32:42 71%)
### Video 200: Natural Language Processing in R - Step 9 (12:50 28:59:49/40:32:42 72%)
### Video 201: Natural Language Processing in R - Step 10 (17:30 29:17:20/40:32:42 72%)
### Document 202: Homework Challenge
# Part 8: Deep Learning
## Section 30: Part 8: Deep Learning (2 video)
### Document 203: Welcome to Part 8 - Deep Learning
### Video 204: What is Deep Learning? (12:34 29:29:54/40:32:42 73%)
## Section 31: Artificial Neural Networks (24 video)
### Video 205: Plan of attack (02:51 29:32:45/40:32:42 73%)
### Video 206: The Neuron (16:23 29:49:09/40:32:42 74%)
### Video 207: The Activation Function (08:29 29:57:38/40:32:42 74%)
### Video 208: How do Neural Networks work? (12:47 30:10:25/40:32:42 74%)
### Video 209: How do Neural Networks learn? (12:58 30:23:23/40:32:42 75%)
### Video 210: Gradient Descent (10:12 30:33:35/40:32:42 75%)
### Video 211: Stochastic Gradient Descent (08:44 30:42:19/40:32:42 76%)
### Video 212: Backpropagation (05:21 30:47:40/40:32:42 76%)
### Video 213: How to get the dataset (03:18 30:50:58/40:32:42 76%)
### Video 214: Business Problem Description (04:59 30:55:57/40:32:42 76%)
### Video 215: ANN in Python - Step 1 - Installing Theano, Tensorflow and Keras (12:58 31:08:55/40:32:42 77%)
### Video 216: ANN in Python - Step 2 (18:15 31:27:11/40:32:42 78%)
### Video 217: ANN in Python - Step 3 (03:14 31:30:25/40:32:42 78%)
### Video 218: ANN in Python - Step 4 (02:20 31:32:45/40:32:42 78%)
### Video 219: ANN in Python - Step 5 (12:19 31:45:05/40:32:42 78%)
### Video 220: ANN in Python - Step 6 (02:43 31:47:48/40:32:42 78%)
### Video 221: ANN in Python - Step 7 (03:32 31:51:20/40:32:42 79%)
### Video 222: ANN in Python - Step 8 (06:55 31:58:15/40:32:42 79%)
### Video 223: ANN in Python - Step 9 (06:21 32:04:36/40:32:42 79%)
### Video 224: ANN in Python - Step 10 (06:46 32:11:22/40:32:42 79%)
### Video 225: ANN in R - Step 1 (17:17 32:28:38/40:32:42 80%)
### Video 226: ANN in R - Step 2 (06:30 32:35:09/40:32:42 80%)
### Video 227: ANN in R - Step 3 (12:29 32:47:38/40:32:42 81%)
### Video 228: ANN in R - Step 4 (Last step) (14:07 33:01:45/40:32:42 81%)
## Section 32: Convolutional Neural Networks (21 video)
### Video 229: Plan of attack (03:31 33:05:15/40:32:42 82%)
### Video 230: What are convolutional neural networks? (15:49 33:21:04/40:32:42 82%)
### Video 231: Step 1 - Convolution Operation (16:38 33:37:42/40:32:42 83%)
### Video 232: Step 1(b) - ReLU Layer (06:41 33:44:23/40:32:42 83%)
### Video 233: Step 2 - Pooling (14:13 33:58:36/40:32:42 84%)
### Video 234: Step 3 - Flattening (01:52 34:00:29/40:32:42 84%)
### Video 235: Step 4 - Full Connection (19:23 34:19:52/40:32:42 85%)
### Video 236: Summary (04:19 34:24:12/40:32:42 85%)
### Video 237: Softmax & Cross-Entropy (18:19 34:42:31/40:32:42 86%)
### Video 238: How to get the dataset (03:18 34:45:49/40:32:42 86%)
### Video 239: CNN in Python - Step 1 (12:45 34:58:34/40:32:42 86%)
### Video 240: CNN in Python - Step 2 (03:00 35:01:34/40:32:42 86%)
### Video 241: CNN in Python - Step 3 (01:05 35:02:39/40:32:42 86%)
### Video 242: CNN in Python - Step 4 (12:50 35:15:29/40:32:42 87%)
### Video 243: CNN in Python - Step 5 (04:58 35:20:27/40:32:42 87%)
### Video 244: CNN in Python - Step 6 (04:59 35:25:26/40:32:42 87%)
### Video 245: CNN in Python - Step 7 (05:57 35:31:23/40:32:42 88%)
### Video 246: CNN in Python - Step 8 (02:49 35:34:12/40:32:42 88%)
### Video 247: CNN in Python - Step 9 (19:44 35:53:56/40:32:42 89%)
### Video 248: CNN in Python - Step 10 (08:28 36:02:24/40:32:42 89%)
### Document 249: CNN in R
# Part 9: Dimensionality Reduction
## Section 33: Part 9: Dimensionality Reduction (1 video)
### Document 250: Welcome to Part 9 - Dimensionality Reduction
## Section 34: Principal Component Analysis (PCA) (7 video)
### Video 251: How to get the dataset (03:18 36:05:42/40:32:42 89%)
### Video 252: PCA in Python - Step 1 (11:46 36:17:29/40:32:42 90%)
### Video 253: PCA in Python - Step 2 (08:03 36:25:32/40:32:42 90%)
### Video 254: PCA in Python - Step 3 (09:47 36:35:19/40:32:42 90%)
### Video 255: PCA in R - Step 1 (12:07 36:47:27/40:32:42 91%)
### Video 256: PCA in R - Step 2 (11:22 36:58:49/40:32:42 91%)
### Video 257: PCA in R - Step 3 (13:42 37:12:31/40:32:42 92%)
## Section 35: Linear Discriminant Analysis (LDA) (3 video)
### Video 258: How to get the dataset (03:18 37:15:49/40:32:42 92%)
### Video 259: LDA in Python (18:10 37:33:59/40:32:42 93%)
### Video 260: LDA in R (19:59 37:53:58/40:32:42 93%)
## Section 36: Kernel PCA (3 video)
### Video 261: How to get the dataset (03:18 37:57:16/40:32:42 94%)
### Video 262: Kernel PCA in Python (14:26 38:11:43/40:32:42 94%)
### Video 263: Kernel PCA in R (20:30 38:32:13/40:32:42 95%)
# Part 10: Model Selection & Boosting
## Section 37: Part 10: Model Selection & Boosting (1 video)
### Document 264: Welcome to Part 10 - Model Selection & Boosting
## Section 38: Model Selection (6 video)
### Video 265: How to get the dataset (03:18 38:35:31/40:32:42 95%)
### Video 266: k-Fold Cross Validation in Python (13:44 38:49:16/40:32:42 96%)
### Video 267: k-Fold Cross Validation in R (19:29 39:08:45/40:32:42 97%)
### Video 268: Grid Search in Python - Step 1 (15:09 39:23:54/40:32:42 97%)
### Video 269: Grid Search in Python - Step 2 (11:03 39:34:58/40:32:42 98%)
### Video 270: Grid Search in R (13:58 39:48:57/40:32:42 98%)
## Section 39: XGBoost (4 video)
### Video 271: How to get the dataset (03:18 39:52:15/40:32:42 98%)
### Video 272: XGBoost in Python - Step 1 (09:31 40:01:46/40:32:42 99%)
### Video 273: XGBoost in Python - Step 2 (12:42 40:14:28/40:32:42 99%)
### Video 274: XGBoost in R (18:14 40:32:42/40:32:42 100%)
## Section 40: Bonus Lectures (1 video)
### Document 275: ***YOUR SPECIAL BONUS***
