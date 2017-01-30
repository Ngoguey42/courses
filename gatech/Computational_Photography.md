<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Computational_Photography.md                       :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/01/29 15:15:23 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/30 12:33:54 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> Udacity
> Irfan Essa
> L02-04, 14 videos, 0:27:58
> L02-05, 18 videos, 0:28:11
> Course, 620 videos, ~17:33:21
> https://classroom.udacity.com/courses/ud955
> docker run -it -v `pwd`:/home/scientist/shared tsutomu7/python-opencv bash

# Glossary


# 01-01 Introduction
- ras

# 01-02 What is Computational Photography?
- Def: Computational Photography

# 01-03 Dual Photography
- Aperture
- Ex: Stanford dual photography

# 01-04 Panorama
1. Capute Images
2. Detection and matching between images
3. Image warping
4. Fading/Blending/Cuting
5. Cropping

# 01-05 Why Study Comp. Photography?
- SLR vs Camera Phone
- Film vs Digital camera
- Evolution on camera
 - 1839
- `beast with a billion eyes`
- Ref: Geotagging

# 02-01 Digital image
- Ex: Mandrille
- Histogram
- OpenCV Python
- Matlab / gnu octave
- processing.org
- python sandbox

```python
import cv2

img = cv2.imread('truc.jpg')
cv2.imwrite('labas.png', img)
```
- Exchangeable image file format

# 02-02 Point processes
- image substraction/addition

# 02-03 Blending modes
### Blend modes
- Division
 - brightens
- Addition
 - saturation
- Substraction
 - saturation
- Difference (substract with scaling)
 - `a - b`
- Darken
 - `min(a, b)`
- Lighten
 - `max(a, b)`
- multiply
 - darker
 - `ab`
- screen
 - brighter
 - `1 - (1 - a)(1 - b)`
- overlay
 - `2ab if a < 0.5 else: 1 - 2(1 - a)(1 - b)`

### Dodge and Burn
- inherited from work done in dark room

# 02-04 Smoothing
- Smoothing borders of an image by duplicating the existing edge further away
- `Kernel`
 - matrix used for smoothing
- `F[i,j]` input
- `G[i,j]` output
- `h[i,j]` kernel
- Cross-corellation (aka x-corellation)
- Box Filtering (aka averaging)
- Median Filtering
 - Using median instead of mean
 - `Nonlinear operation`
 - reduces noise
 - preserve edges and sharp lines
 - kills salt and pepper noise

# 02-05 Convolution and cross-correlation
- Def: Cross-corellation
 1. Measure of similarity of two waveforms as a function of tim-lag applied to one of them
 2. Sliding dot product
 3. `sum_(u=-k)^(k) sum_(v=-k)^(k) h[u, v] * F[i + u, j + v]`
 4. `G = h ox F` cross-corellated
- Gaussian filter
 - Normal distribution in the kernel
 - `sigma` determines extent of smoothing, variance
- Convolution
- Impulse image
 - Image filled with 0, and 1 in the middle
- Filtering == Sliding the kernel
- Filtering in an impulse image applied the kernel mirrored in `G`
- Def: Convolution
 1. Operation on two functions `F` and `h` producing `G`, the overlap of the two first
 2. `sum_(u=-k)^(k) sum_(v=-k)^(k) h[u, v] * F[i - u, j - v]`
 3. `G = h * F`
- Convolution and X-correlation is the same when the kernel is symmetric
- Convolution is commutative and associative
- Kernel combination with convolution
- Ex: Sharpening filter

# 02-06 Gradients
- Discontinuities in a scene
 - Surface normal
 - Depth
 - Surface color
 - Illumination
- Gradient of an image
 - changes in one direction at a time
 - `Delta F = [deltaF / deltax, deltaF/deltay]`
 - The gradient points in the most rapid direction `Theta`, has an angle and a magnitude
 - `Theta = tan^-1 [deltaF / deltax / deltaF/deltay]` angle
 - `||Delta F|| = sqrt((deltaF / deltax)^2 + (deltaF/deltay)^2)` magnitude
- Ex: `Delta F = [deltaF / deltax, 0]`
- Ex: `Delta F = [0, deltaF / deltay]`
- Ex:`Delta F = [deltaF / deltax, deltaF/deltay]`
- Def: continuous image grandient
 - `deltaF(x, y) / deltax = lim_(epsilon->0) (F(x + epsilon, y) - F(x, y)) / epsilon` partial derivative according to x
- Def: discrete image grandient
 - `deltaF(x, y) / deltax ~= (F(x + 1, y) - F(x, y)) / 1` partial derivative according to x
- Ex: Zebra gradient
 - According to x
 - According to y
 - Magnitude
 - Gradiant angle (visualisation: arrow / 3d height)

# 02-07 Edges
- Derivative as a local product
 - `deltaF(x, y) / deltax = (F(x + 1, y) - F(x, y)) / 1`
 - `= [-1, 1].[F(x, y), F(x + 1, y)]^T` dot product
 - `= kernel ox input`
- Cross-corellation with `[-1, 1]` `[[0, 0], [-1, 1], [0, 0]]` `[[0, 0, 0], [-1/2,, 0, 1/2], [0, 0, 0]]`
- Ex
 - Prewitt kernel: `[[-1, 0, 1], [-1, 0, 1], [-1, 0, 1]]`
 - Sovel kernel:  `[[-1, 0, 1], [-2, 0, 2], [-1, 0, 1]]`
 - Roberts kernel:  `[[0, 1], [-1 0]]`
- Impact of Noise on Gradients
- Canny Edge Detector
 - Thin multi-pixel wide edges down to single pixel wide edges

# 03-01 Cameras
# 03-02 Lenses
# 03-03 Exposure
# 03-04 Sensor
# 04-01 Fourier Transform
# 04-02 Blending
# 04-03 Pyramids
# 04-04 Cuts
# 04-05 Features
# 04-06 Feature Detection and Matching
# 05-01 Image Transformation
# 05-02 Image Morphing
# 05-03 Panorama
# 05-04 High Dynamic Range
# 05-05 Stereo
# 05-06 Photosynth
# 05-07 Extrinsic Camera Parameters (opt)
# 05-08 Intrinsic Camera Parameters (opt)
# 05-09 Calibrating Cameras (opt)
# 06-01 Video Processing
# 06-02 Video Textures
# 06-03 Video Stabilization


********************************************************************************
********************************************************************************
********************************************************************************
