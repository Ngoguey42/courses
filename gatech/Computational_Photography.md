<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Computational_Photography.md                       :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2017/01/29 15:15:23 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/02/12 21:07:26 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> - Udacity
> - Irfan Essa
> - L02-04, 14 videos, 0:27:58
> - L02-05, 18 videos, 0:28:11
> - Course, 620 videos, ~17:33:21
> - https://www.udacity.com/course/computational-photography--ud955
> - https://classroom.udacity.com/courses/ud955
> - docker run -it -v `pwd`:/home/scientist/shared tsutomu7/python-opencv bash
>  - Make sure to run this command with docker daemon ON, and from a sharable directory

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
- Detail: Single lens reflex camera
- Ex: Camera obscura (pinhole camera)
- Aperture
- Desired aperture size
 - Diffraction vs light quantity
 - d: aperture diameter
 - f: sensor-aperture distance
 - pi: wavelength of light
 - `d = 2 sqrt(1/2 fpi)`
- Lens detail

# 03-02 Lenses
- Focal length
 - low fov (degree) <=> low focal length (mm)
- Sensor sizes
- Ex: Scene
 - f = 18m, sensor = 35mm, d1 = 0.5m, d2 = 2m, object appear thiner and darker
 - f = 180m, sensor = 35mm, d1 = 3m, d2 = 4.5m, objects appear closer
 - vertigo effect, Hitchcock, Lord of the Ring
- Projection
 - exemple using lhs rule
 - 2d image plane projection coord `x_i, y_i`
 - 3d space object coord `X_0, Y_0, Z_0`
 - object at `[X_0, Y_0, Z_0]` => `[X_0:Y_0:Z_0]` = `[X_0/Z_0:Y_0/Z_0:1]`
 - image at `[-x_i, -y_i, -f]` => `[-x_i:-y_i:-f]` = `[x_i/f:y_i/f:1]`
 - then `X_0/Z_0 = x_i/f` <=> `x_i = f X_0/Z_0`
 - then `Y_0/Z_0 = y_i/f` <=> `y_i = f Y_0/Z_0`

# 03-03 Exposure
- Exposure triangle
 - Aperture
 - Shutter speed
 - ISO
- Exposure
 - `Exposure = Irradiance * Time`
 - `H = E * T`
- Irradiance
 - light.distance^(-2).time^(-1)
 - Controller by aperture
- Exposure Time
 - Shutter time open
- Ref: Pentaprism
- Shutter speed
 - Ex: Waterfall
- Aperture
 - `f` focal length
 - `N` aperture number (aka `f/N`)
    - Inv proportional to area
 - `Area = pi (f / (2N))^2` area of a circle
 - Ex: `f = 50mm`, `N = 2.0` => `aperture = 25mm`
 - Ex: To cut light by 2, increase N by sqrt(2)
- Ref: Shallow depth of field
- ISO
 - Sensitivity
 - Proportional to quantity of noise
 - Proportional to the quantity of light
 - Ex: `100` when sunny / `1600` when dark
- Ex: (Under|Over)exposed scene with aperture and shutter speed
- Ex: (Under|Over)exposed scene with ISO and shutter speed
- Exposure triange
 - increase ISO: grain
 - increase Shutter speed: motion blur
 - increase aperture: depth of field

# 03-04 Sensor
- Detail: Film
- CCD
 - Charge-Coupled Device
 - Store incoming photons as electron charges
 1. Micro lenses, focus light
 2. Hot mirror, simple filter
 3. Color filter, split colors (Bayer Array)
 4. Photodiodes, photons to electrons
 5. Well (depletion layer), electrons collection
- Bayer Filter
- CMOS
 - Complementary metal oxide semiconductor
 - Ref: Rolling shutter artefact
- Raw file format

# 04-01 Fourier Transform
## Reconstruction of a signal
- `f^T(t)` target signal
 - function of time
- Single wave `f(t) = A cos(n omega t)`
 - `f` function of time
 - `omega` frequency
 - `n` number of periods
 - `A` amplitude
- Target signal as a sum of N waves
 - `f^T(t) = sum_(n = 1)^N A cos(n omega t)`

## Misc.
```octave
n = 4;
t = linspace(0, n, n * 90); % vector of `n * 90` values ranging from 0 to 4 (ordered)
A = 2; % amplitude

f1 = A * cos(1 * (2 * pi) * t); % vector of `n * 90` values ranging from -A to A
plot(t, f1); % x and y axes
```

- Ex: Box filter `A Sum_(k=1)^(oo) 1/k sin(2 pi k t)`

# 04-02 Blending
- Ex: Blending two different furs
- Cross-fading
 - Window size theory
 - To avoid seams: size of the largest feature
 - To avoid ghosting: <= 2x size of the smallest feature
- Using fourier transform
- Ref: Octave
- Ref: Feather

# 04-03 Pyramids
- Skrink image by 2 with gaussian kernel
 - Form a 3d pyramid by stacking the images (gaussian pyramid)
 - `g_k = h ox g_(k - 1)` level k from the level k-1 with kernel `h`
 - `g_k = REDUCE(g_(k - 1))`
- We can do corse computations at the top of the pyramid and fine computations at the bottom
- `EXPAND` reverses `REDUCE`
- Laplacian image
 - `g_(0,1) = EXPAND(REDUCE(g_0)) - g_(0)`
 - This is the error induced by the successive reduce and expand
 - This is the difference between two Gaussian images
- Laplacian pyramid is computed from successive laplacian images
- Ref: Combined pyramids

# 04-04 Cuts
- Minimizing overlap error
 - Compute the square of the difference of the overlap zone, compute a seam taking the weighted shortest path with the errors for each pixels
- Extending images
- Ex: TextureTransfer software
- Maxflow mincut / dynamic programming
- Seam carving

# 04-05 Features
- Corner detection
 - Moving a window in flat/edge/corner regions
 - Requires gradient change in two directions
- Change in appearance in math
 - `E(u, v) = sum_(forall x, y) w(x, y) (I(x+u, y+v) - I(x, y))^2`
 - `E(u, v)` Change in appearance of the window moved by `u, v`
    - 0 means no change
 - `sum_(forall x, y)` Sum for all pixels in the window
 - `w(x, y)` Weight applied to pixels in the window (gaussian/box/...)
 - `(I(x+u, y+v) - I(x, y))^2` Square difference of the change of intensity at this pixel
 - `E(u, v) ~= [u, v] M [[u], [v]]` quadratic approximation with taylor expansion
    - Second moment matrix
    - Summarizes the predominent direction of the gradient near a point
	- `M = sum(forall x, y) w(x,y) [[I_x^2, I_x I_y], [I_x I_y, I_y^2]]` with the image derivates `I_x, I_y`
 - `E(u, v) = sum_(forall x, y) w(x, y) (uu I_x^2 + 2uv I_x I_y + vv I_y^2)`
  - at each x, y we have the equation of an ellispse
  - axis lengths are the eigenvalues, they can be used to know if in flat/edge/corner region
  - orientations are the eigenvectors

# 04-06 Feature Detection and Matching
- Harris detector algorithm
 - Invariant to rotation and intensity changes
 - Corner response function
```python
"""Harris Corner Detection"""

import numpy as np
import cv2

def find_corners(img):
    """Find corners in an image using Harris corner detection method."""

    # Convert to grayscale, if necessary
    img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY) if len(img.shape) == 3 else img

    # Compute Harris corner detector response (params: block size, Sobel aperture, Harris alpha)
    h_response = cv2.cornerHarris(img_gray, 2, 3, 0.04)
    print('h_response', str(h_response))

    # Display Harris response image
    h_min, h_max, _, _ = cv2.minMaxLoc(h_response)  # for thresholding, display scaling
    print('h_min', (h_min))
    print('h_max', (h_max))
    cv2.imwrite("HarrisResponse.png", np.uint8((h_response - h_min) * (255.0 / (h_max - h_min))))

    # Select corner pixels above threshold
    h_thresh = 0.01 * h_max
    print('h_thresh', (h_thresh))
    _, h_selected = cv2.threshold(h_response, h_thresh, 1, cv2.THRESH_TOZERO)
    print('h_selected', str(h_selected))

    # Pick corner pixels that are local maxima
    nhood_size = 5  # neighborhood size for non-maximal suppression (odd)
    print("nhood_size %s" % nhood_size)
    nhood_r = int(nhood_size / 2)  # neighborhood radius = size / 2
    corners = []  # list of corner locations as (x, y, response) tuples
    for y in range(h_selected.shape[0]):
        for x in range(h_selected.shape[1]):
            if h_selected.item(y, x):
                h_value = h_selected.item(y, x)  # response value at (x, y)
                nhood = h_selected[(y - nhood_r):(y + nhood_r + 1), (x - nhood_r):(x + nhood_r + 1)]
                if not nhood.size:
                    continue  # skip empty neighborhoods (which can happen at edges)
                local_max = np.amax(nhood)  # compute neighborhood maximum
                if h_value == local_max:
                    corners.append((x, y, h_value))  # add to list of corners
                    h_selected[(y - nhood_r):(y + nhood_r), (x - nhood_r):(x + nhood_r)] = 0  # clear
                    h_selected.itemset((y, x), h_value)  # retain maxima value to suppress others

    h_suppressed = np.uint8((h_selected - h_thresh) * (255.0 / (h_max - h_thresh)))
    cv2.imwrite("SuppressedHarrisResponse.png", h_suppressed)
    return corners


def test():
    """Test find_corners() with sample input."""

    # Read image
    img = cv2.imread("octagon.png")
    # cv2.imwrite("Image.png", img)

    # Find corners
    corners = find_corners(img)
    print("\n".join("{} {}".format(corner[0], corner[1]) for corner in corners))

    # Display output image with corners highlighted
    img_out = img.copy()
    for (x, y, resp) in corners:
        cv2.circle(img_out, (x, y), 1, (0, 0, 255), -1)  # red dot
        cv2.circle(img_out, (x, y), 5, (0, 255, 0), 1)  # green circle
    cv2.imwrite("Output.png", img_out)

if __name__ == "__main__":
  test()
```
- Harris-Laplacian detector
 - Look for corners at different scale
- SIFT
 - Invariant to scale

# 05-01 Image Transformation
- Global function
- Global warping
- Uniform scaling `[[a, 0], [0, a]]`
- Mirror `[[-1, 0], [0, 0]]`
- Shear `[[1, a], [b, 1]]`
- Rotation `[[cos(theta), -sin(theta)], [sin(theta), cos(theta)]]`
- Linear transformation
- Translations with homogeneous coordinates
 - `[[1, 0, t_x], [0, 1, t_y], [0, 0, 1]]`
- Transformation combination
|              |                   | preservation | preservation | preservation | preservation | preservation   |
|              | degree of freedom | orientation  | length       | angles       | parallelism  | straight lines |
|--------------|-------------------|--------------|--------------|--------------|--------------|----------------|
| translation  | 2                 | x            | x            | x            | x            | x              |
| euclidean    | 3                 |              | x            | x            | x            | x              |
| similarity   | 4                 |              |              | x            | x            | x              |
| affine       | 6                 |              |              |              | x            | x              |
| projective   | 8                 |              |              |              |              | x              |

# 05-02 Image Morphing
- Image transformation vs warping
 - lines to lines vs points to points
- Forward / Inverse warping
- Aliasing and blocking artefacts
- Mesh based warping
  displacement field
- Ex: Michael jackson, black or white

# 05-03 Panorama
- Bundle of rays
- Image reprojection
- Homography
- RANSAC, Ransom sample consensus
- Ex: With opencv
- Ex: apg kolor autopano giga v3
- Planar/Cylindrical/Spherical panoramas

# 05-04 High Dynamic Range
- Luminance candela/area `cd/m^2`
 - `log cd/m^2` often range from -6 to 8
- Static contast ratio, human 100:1
- Dynamic contast ratio, human 10^6:1
- Image aquisition pipeline
 1. Scene radiance `L = W / sr / m^2` `power(watt) / solid angle(steradian) / area`
 1. Sensor irradiance `E = W / m^2`
 1. Sensor exposure `H = W / m^2 / s`
 1. Capacitors voltages
 1. Digital values (raw image)
 1. Pixel values `I`
- pipeline `g: L -> E -> H -> I`
- inverse pipeline `g^-1: I -> H -> E -> L`
- camera attributes
 - geometric
 - radiometric / photometric
- From a stack of images with different exposures, and a bunch of points matched on all images, each point has its own curve (I / log H)
 1. The objective is to merge the curves to obtain a single smooth response curve for all points
 2. We now have a high radiance map of the scene (can be stored as rgbe (e for exponent))
 3. Tone mapping to a display with limited range

# 05-05 Stereo
- Stereophotography
- Range image
- Depth cues, compution shape from x
 - Vanishing lines
 - Known size of objects (size of human, shape of a texture)
 - Occlusion
 - Illumination with structured light
 - From focus/defocus
 - From several images and motion
- Human eyes ~63mm apart, aka baseline, aka `T_x`
- Ex: Stereo pair, anaglyph
 - `np.dstack()`
- Disparity: x distance `d = x_l - x_r` of a point on the two projection planes (`y_r = y_r`)
- Disparity values (0 - 64), 0 means no info, 64 means confidence
- Epipolar constraint
 - Reduce the search space to 1d line
 - Reduce the search along the `y` axis
- RGBD camera (depth)
 - kinect
 - time of flight camera
 - project tango
 - amazon fire
- Ex: Fujifilm 3d camera

# 05-06 Photosynth
- Photo tourism = photo synthessis = photosynth
- Video: Photo Tourism, Exploring photo collections in 3D, SIGGRAPH 2006

# 05-07 Extrinsic Camera Parameters (opt)
https://classroom.udacity.com/courses/ud955/lessons/3878278541/concepts/29548388670923

# 05-08 Intrinsic Camera Parameters (opt)
# 05-09 Calibrating Cameras (opt)
# 06-01 Video Processing
# 06-02 Video Textures
# 06-03 Video Stabilization
# 06-04 Panoramic Video Textures
# 07-01 Light Field
# 07-02 Projector-Camera Systems
# 07-03 Coded Photography
# 07-04 And Remember…

********************************************************************************
********************************************************************************
********************************************************************************
