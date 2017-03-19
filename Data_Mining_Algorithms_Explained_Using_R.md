<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Data_Mining_Algorithms_Explained_Using...          :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@airware.com>              +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/03/19 14:53:37 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/03/19 17:45:19 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> - Wiley
> - Pawel Cichosz
> - 2015
> - First Edition

# Part I - Preliminaries - Chapter 1 - Tasks
- `knowledge is both the input and output of inference`
- `inductive inference` vs `deductive inference`
 - `inductive inference is fallible and there is no guarantee that it would yield true conclusions when applied to true premises`
 - `deductive inference is infallible and its conclusions are guaranteed to be satisfied whenever its premises are`
- `Inductive learning tasks with a designated target attribute are referred to as supervised learning tasks, whereas those with no target attribute are referred to as unsupervised learning tasks`
- `training performance` vs (`true performance` aka `generalization performance`)
- `overfitting`
- `oversearching`

## 1.3 - Classification
- Scoring classifier
 - Classification by assigning a real number, and using a cutoff value
- Probabilistic classifiers
- `overfitting`
 - `A classification model is overfitted if another model predicts class labels for the whole domain better despite yielding worse training set predictions.`

## 1.4 Regression
- `classification with continuous classes`

## 1.5 Clustering
- `classification with autonomously discovered rather than predefined classes`
- Subtasks
  1. Cluster formation
  1. Cluster modeling
    - classification task
- `crisp clustering` vs `soft clustering`
 - How many clusters per instance
- Hierarchical clustering

# 1.6
- `The fact is that all useful data mining algorithms have to assume the risk of data being affected by noise and not blindly trust any apparent patterns. This limited confidence in data is actual at the heart of good generalization.`

# 1.7
- Not included in book: `association and temporal pattern discovery`, `geospatial data analysis`, `time series analysis`, `survival analysis`
