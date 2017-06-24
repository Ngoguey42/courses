<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                                         -->
<!-- ConvolutionalNeuralNetworks.md                                          -->
<!--                                                                         -->
<!-- By: ngoguey <ngoguey@airware.com>                                       -->
<!--                                                                         -->
<!-- Created: 2017/06/24 16:55:32 by ngoguey                                 -->
<!-- Updated: 2017/06/24 18:40:20 by ngoguey                                 -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> CS231n: Convolutional Neural Networks for Visual Recognition
> Fei-Fei Li, Andrej Karpathy, Justin Johnson
> 18:27:42 (1:19:07 per video)
> 2016
> Stanford
> - https://www.youtube.com/playlist?list=PL16j5WbGpaM0_Tj8CRmurZ8Kk1gEBc7fg
> - http://cs231n.stanford.edu/
> - http://cs231n.stanford.edu/slides/2016/

# Lecture 1 - Introduction and Historical Context (1:19:08)
> http://cs231n.stanford.edu/slides/2016/winter1516_lecture1.pdf
> Fei-Fei Li
- CV classes @ stanford 2016
  - CS131 (undergrad)
  - CS231a (grad)
  - CS231n
- Story: 1959 Huber & Wiesel
  - Cat, brain, bars
- Story: 1963 Larry Robers
  - The block human recognise no matter the orientation/lighting
- Story: 1966, The summer vision summer
- `Vision is hierarchical, we start simple and do not end simple`
- Ref: Generalized cylinder model
  - 1979 Brooks & Binford
  - `The world is composed of simple shapes, any real world object is a combination of these simple shapes, given a viewing angle`
- Ref: Pictorial structure
  - 1973 Fischler & Eschlager
  - `The world is composed of simple shapes, connected by springs`
- Ref: Shaving razors recognition
  - 1987 David Lowe
  - Recognizing edges
- Ref: Normalized cut
  - 1997 Shi & Malik
  - Perceptual grouping (not solved in CV 2016)
- Ref: Face Detection
  - 2001 Viola & Jones
  - Ref: 2006 Fujifilm first camera with face detector
- Ref: SIFT & Object Recognition
  - 1999 David Lowe
  - Learning important features of an object to recognize from different angles
  - Feature recognition was the base of CV in the 2000' years with SVM
- Ref: Deformable Part Model
  - 2009 Felzenswalb, McAllester, Ramanan
  - Learn how different parts of an object configure in space
- Ref: PASCAL Visual Object Challenge
  - Brought benchmarking into the CV community
- Ref: IMAGENET
  - 22K categories, 14M images
- Fields
  - Image classification
  - Object detection
  - Action classification
  - Image captioning
- `CNN is one type of DL architecture`
- IMAGENET winners:
  - 2010 Lin CVPR, NEC-UIUC (SIFT + SVM)
  - 2012 Krizhevsky NIPS, SuperVision (7 layer CNN)
  - 2015 MSRA (151 layer CNN, resnet)
- Ref: Kunihiko Fukushima
- Ref: Bell labs, checks recognition
  - 1998 LeCun
  - 10^6 transistors
  * 10^7 pixels for training
- Ref: SuperVision
  - 2012 Krizhevsky
  - 10^9 transistors
  - 10^14 pixels for training
- Image of boys playing tennis captioned plus an object relationship graph

# Lecture 2 - Data driven approach, kNN, Linear Classification 1 (0:57:28)
# Lecture 3 - Linear Classification 2, Optimization (1:11:24)
# Lecture 4 - Backpropagation, Neural Networks (1:19:39)
# Lecture 5 - Neural Networks Part 2 (1:18:38)
# Lecture 6 - Neural Networks Part 3 Intro to ConvNets (1:09:36)
# Lecture 7 - Convolutional Neural Networks (1:19:02)
# Lecture 8 - Localization and Detection (1:04:57)
# Lecture 9 - Visualization, Deep Dream, Neural Style, Adversarial Examples (1:18:20)
# Lecture 10 - Recurrent Neural Networks, Image Captioning, LSTM (1:09:54)
# Lecture 11 - ConvNets in practice (1:15:03)
# Lecture 12 - Deep Learning libraries (1:21:07)
# Lecture 13 - Segmentation, soft attention, spatial transformers (1:11:00)
# Lecture 15 - Invited Talk by Jeff Dean (1:14:50)
# Lecture 14 - Videos and Unsupervised Learning (1:17:36)
