<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Computational_Photography.md                       :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/01/29 15:15:23 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/29 19:46:19 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> Udacity
> Irfan Essa
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


# 02-05 Convolution and cross-correlation
# 02-06 Gradients
# 02-07 Edges
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
