<!-- *********************************************************************** -->
<!--                                                                         -->
<!--                                                      :::      ::::::::  -->
<!-- Image_and_Video_Processing.md                      :+:      :+:    :+:  -->
<!--                                                  +:+ +:+         +:+    -->
<!-- By: ngoguey <ngoguey@student.42.fr>            +#+  +:+       +#+       -->
<!--                                              +#+#+#+#+#+   +#+          -->
<!-- Created: 2016/12/16 15:55:51 by ngoguey           #+#    #+#            -->
<!-- Updated: 2017/01/28 18:08:19 by ngoguey          ###   ########.fr      -->
<!--                                                                         -->
<!-- *********************************************************************** -->

> https://www.youtube.com/playlist?list=PLZ9qNFMHZ-A79y1StvUUqgyL-O0fZh2rs
> 15h18

# Week 0 - Image compression
## Lecture 0 - Welcome and Start Here (00:34) 0%
## Lecture 1 - What is image and video processing (part 1) (10:50) 1%
## Lecture 2 - What is image and video processing (part 2) (10:41) 2%
## Lecture 3 - Course logistics (02:43) 3%
## Lecture 4 - Images are everywhere (06:32) 3%
## Lecture 5 - Human visual system (17:11) 5%
- Human eye
 - Cones, rods / vision angle
 - Blind spot
- Weber law
 - Perception of color changes relative to background lighting intensity
- Mach band
 - Optical illusions
 - Perception of two insensities side by side in an image

## Lecture 6 - Image formation - Sampling Quantization (28:18) 8%
- Sampling, quantization / Spacial, color
- Saturation, specularity
- False contours

## Lecture 7 - The why and how of compression (14:17) 10%
- General case
 - Encoder: Mapper, quantizer, symbol coder
 - Decoder: Symbol decoder, inverse mapper
- JPEG
 - Encoder:
   1. Cut in 8*8 images
   2. Forward transform (Descrete cosine transform)
   3. Quantizer
   4. Symbol encoder
 - Decoder:
   1. Symbol decoder
   2. Inverse transform
   3. Merge images

## Lecture 8 - Huffman coding (20:12) 12%
- Symbol encoder
- voir Sedgewick

## Lecture 9 - JPEGs 8x8 blocks (05:38) 13%
- `YC_bC_r`
 - Y luminance (black and white)
- MSE, Mean square error
- Kahynen-Loeve

## Lecture 10 - The Discrete Cosine Transform (DCT) (25:33) 16%
- Ref: Markovian image
- Ex: 12.5% jpeg compression on Lina

## Lecture 11 - Quantization (24:03) 18%
ras

## Lecture 12 - JPEG_LS and MPEG (19:33) 20%
- JPEG lossless
 - Predective coding

## Lecture 13 - Bonus Run-length compression (04:30) 21%
ras


# Week 2 - Image enhancement
## Lecture 14 - Introduction to image enhancement (19:12) 23%
- Gamma correction
- Contrast stretching

## Lecture 15 - Enhancement Histogram modification (03:54) 23%
ras

## Lecture 16 - Histogram equalization (19:58) 25%
ras

## Lecture 17 - Histogram matching (08:32) 26%
ras

## Lecture 18 - Introduction to local neighborhood operations (06:47) 27%
- Local averaging

## Lecture 19 - Mathematical properties of averaging (11:01) 28%
- Minimizing the square error with average
- Gaussian filtering
 - `f(x, y, sigma) = f(x, y) * G(0, sigma)`
 - sigma: variance of the gaussian
- Heat flow

## Lecture 20 - Non-Local means (07:28) 29%
- Averages in the whole image
1. Find non-local neighborhood
2. Average them

## Lecture 21 - IPOL Demo - Non-Local means (03:39) 30%
- `ipol.org `

## Lecture 22 - Median filter (07:21) 30%
- Ex: Circuit board
 - Salt and pepper noise
- Median filter
 - Sort pixels in a block by noise, pick the median
- The absolute difference is minimum for the median
- The square difference is minimum for the mean

## Lecture 23 - Demo - Median filter (01:33) 30%
ras

## Lecture 24 - Demo - Unsharp masking (03:12) 31%
- Ex: coins

## Lecture 25 - Gradients of scalar and vector images (05:58) 31%
ras

## Lecture 26 - Concluding remarks (01:13) 32%
ras

# Week 3 - Image restoration
## Lecture 27 - What is image restoration (07:50) 32%
- General process of the image degradation/restoration
 - Degradation phase
   - Degradation function `H(x, y)` (blurring, out of focus, motion blur)
   - Noise function `eta(x, y)` (sensors of camera)
   - `g(x, y) = f(x, y) * H(x, y) + eta(x, y)` (additive noise in this formula, can convert multiplicative noise to additive with log)
 - Restoration phase
   - `hat f(x, y) ~= f(x, y)`

## Lecture 28 - Noise types (12:44) 34%
- Gaussian noise
- Rayleigh noise
- Exponential noise
- Uniform noise
- Impulse noise (salt and pepper)

## Lecture 29 - Demo - Types of noise (03:04) 34%
- Ex: Saturne

## Lecture 30 - Demo - Types of noise - Noise and histograms (04:53) 35%
- Distribution of noises

## Lecture 31 - Estimating noise (10:42) 36%
ras

## Lecture 32 - Degradation Function (11:41) 37%
- Ref: Camera calibration
- Motion blurring

## Lecture 33 - Wiener filtering (12:35) 39%
- Minimize the mean square error

## Lecture 34 - Demo - Wiener and Box filters (03:20) 39%
ras

## Lecture 35 - Concluding remarks (00:34) 39%
ras

# Week 4: Image and video segmentation
## Lecture 36 - Introduction to Segmentation (04:18) 39%
ras

## Lecture 37 - On Edges and Regions (05:17) 40%
ras

## Lecture 38 - Hough Transform with Matlab Demo (21:00) 42%
- Detected segments of an image from (x, y) coordinate system to (rho, theta) system
- Circles detection

## Lecture 39 - Line Segment Detector with Demo (03:21) 43%
ras

## Lecture 40 - Otsus Segmentation with Demo (14:26) 44%
- Otsu's Image Segmentation

## Lecture 41 - Congratulations! :D (00:18) 44%
ras

## Lecture 42 - Interactive Image Segmentation (21:14) 47%
- Ex: Picture of forest with fake faces
- Process
 1. Feature distribution estimation (scribbles draws by user)
 2. Weighted distance transform (geodesic distance)
 3. Refine (relaunch the algorithm with new scribbles constructed by algo)

## Lecture 43 - Graph Cuts (09:35) 48%
- Boykov and Jolly (2001)
- Each pixel
 - Connected connected to its neighbors (4-neighborhood or 8-neighborhood), with weight
 - Connected to an abstract vertex foreground, with weight
 - Connected to an abstract vertex background, with weight
- Min-cut

## Lecture 44 - Mumford-Shah (05:51) 48%
- Concept
 - Move away from the original image. eg: penalizing the amount of boundaries
 - Stay close to the original image. eg: penalizing the mean-square-error

## Lecture 45 - Active Contours (05:58) 49%
- Snakes
- Exemples from ipol.im

## Lecture 46 - Behind the Scenes of Adobes Roto Brush (31:30) 52%
- Inside `After effects cs5`
- Problem for video segmentation
 - Pixel level accuracy
 - Minimal user intervention
 - Interactive real-time
- Challenges
 - Overlapping color distribution
 - Weak boundaries
 - Topology changes
 - Dynamic backgrounds
- Steps
 1. Localized classifiers
   - Motion estimation
   - Shape prior
   - Color models, GMM Gaussial mixture models (Color distribution for bg/fg)
   - Foreach frame, foreach block, merge shape prior and color probability to obtain confidence map
 1. Multi-frame propagation
 1. Local correction
   - Spatial-temporal local correction, manual
 1. Post-processing
   - Smooth segmentation

## Lecture 47 - End of the Week (00:22) 52%
ras

# Week 5: Partial Differential Equations (PDEs)
## Lecture 48 - Introduction to PDEs in Image and Video Processing (10:23) 54%
- Images as continuous objects
 - Integrals vs Sums
 - image pocessing as iteration of infinitesimal operations (PDEs)
 - numerical analysis to get continuous from discrete

## Lecture 49 - Planar Differential Geometry (38:33) 58%
- https://ggbm.at/KUK3FHa3
- Books
 - Geometric Partial Differential Equations and Image Analysis. Guillermon Sapiro
 - Numerical Geometry of Images, Rom Kimmel

### Curve on the plane
- `C(p) = {x(p), y(p)}, p in [0, 1]`
- If the curve is closed, `C(0) = C(1)`
- Tangent `vec t = C_p / |C_p| = C_s`
 - first derivative
 - `C_p = delta C / delta p = [x_p, y_p]`, first derivative at p
 - `C_s` Tangent with unit length
 - `|C_s| = <C_s, C_s> = 1` inner product of 2 vectors, magnitude of the first derivative
- the inner product between the first and second derivative is 0, ie. they are perpendicular
- Normal `C_(ss) = k * vec n`
 - second derivative with respect to the euclidean arclength
 - `C_s perp C_(ss)`
 - `k` curvature, magnitude of the second derivative
 - `s` is the `arc length`
- Strait line has `0` curvature
- Circle has `1/r` curvature
- `s` and `kappa` are preserved over some transformations

### Linear transformations
 - Affine transformation
 - `{x', y'}^T = A{x, y}^T + bar b`
 - `{x, y}^T` vector ?of magnitude T?
 - `bar b` rotation
 - `A` transformation matrix
- An `affine transformation` is an `euclidean transformation` where `A = [bar u_1, bar u_2], where <bar u_1, bar u_2> = 0 and <bar u_i, bar u_i> = 1`, results in a rotation+translation
- An `equi-affine transformation` is an `affine transformation` where `det(A) = 1`, results in a transformation where area is preserved

### Differential Signatures
- Euclidean invariant signature `{S, kappa(S)}`, up to a rotation and a translation
- Cartan Theorem

### Euclidean arclength
- Length is preserved
- `ds = sqrt(dx^2 + dy^2) = |C_p| dp`
- `s = int |C_p| dp`
- Length `L = int_0^1 |C_p| dp = int_0^1 sqrt(<C_p, C_p>) dp = int_0^L ds`

### Equi-affine arclength
- Area is preserved
- `v` affine arclength
- `dv = kappa^(1/3)ds`
- equi-affine invariant signature `{v, mu(v)}`

- `mu` affine invariant curvature
- equi-affine invariant signature `{v, mu(v)}`
- https://en.wikipedia.org/wiki/Affine_curvature

## Lecture 50 - Surface Differential Geometry (11:44) 59%
- Surfaces in 3d
- `S(u, v) = {x(u,v), y(u,v),z(u,v)}`
- `S_u, S_v` tangents
- `vec N = S_u cross S_v / |S_u cross S_v|` normalized vector
- `dA = S_u cross S_v` local area, determinent of the matrix formed by those two vectors
- `A = int int |S_u cross S_v| du dv` total area
- Normal curvature
- Principal curvature of a surface
- Mean curvature
- Gaussian curvature

## Lecture 51 - Curve Evolution (31:11) 62%
- `C_t = vec V` Velocity at every point of a curve
 - `vec V` can be decomposed into a vector colinear to the tangent and a vector colinear to the normal
 - the tangential component do not affect the shape of the curve, only the normal component
 - `<=> C_t = <vec V, vec n> vec n`

### Curvature motion
- `C_t = k vec n` defomation proportional to curvature
- Ref: Heat equation

## Lecture 52 - Level Sets and Curve Evolution (25:35) 65%
## Lecture 53 - Calculus of Variations (14:04) 67%
## Lecture 54 - Anisotropic Diffusion (11:18) 68%
## Lecture 55 - Active Contours (16:58) 70%
## Lecture 56 - Bonus Cool Contrast Enhancement via PDEs (08:33) 71%
## Lecture 57 - Introduction to Image Inpainting (08:17) 72%
## Lecture 58 - Inpainting in Nature (05:02) 72%
## Lecture 59 - PDEs and Inpainting (22:00) 75%
## Lecture 60 - Inpainting via Calculus of Variations (15:33) 76%
## Lecture 61 - Smart Cut and Paste (07:52) 77%
## Lecture 62 - Photoshop Inpainting Healing Brush (02:32) 77%
## Lecture 63 - Video Inpainting and Conclusions (05:14) 78%
## Lecture 64 - Introduction to Sparse Modeling - Part 1 (10:40) 79%
## Lecture 65 - Introduction to Sparse Modeling - Part 2 (18:17) 81%
## Lecture 66 - Sparse Modeling - Implementation (24:31) 84%
## Lecture 67 - Dictionary Learning (17:14) 86%
## Lecture 68 - Sparse Modeling Image Processing Examples (20:57) 88%
## Lecture 69 - A Note on Compressed Sensing (05:11) 89%
## Lecture 70 - GMM and Structured Sparsity (15:41) 90%
## Lecture 71 - Bonus Sparse Modeling and Classification - Activity Recognition (15:11) 92%
## Lecture 72 - Introduction to Medical Imaging (07:04) 93%
## Lecture 73 - Image Processing and HIV (Part I) (23:52) 95%
## Lecture 74 - Image Processing and HIV (Part I) (16:31) 97%
## Lecture 75 - Brain Imaging Diffusion Imaging Deep Brain Stimulation (26:29) 100%
## Lecture 76 - Final course (00:41) 100%
