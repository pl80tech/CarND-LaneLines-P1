# **Finding Lane Lines on the Road** 

## The goals / steps of this project are the following:

* Make a pipeline that finds lane lines on the road
* Reflect on your work in a written report

---
### Project code

Here is my working repository for this project:

https://github.com/pl80tech/CarND-LaneLines-P1

It is cloned from below original repository:

https://github.com/udacity/CarND-LaneLines-P1

---

### Reflection

### 1. Describe your pipeline. As part of the description, explain how you modified the draw_lines() function.

#### 1.1 My pipeline consisted of following steps:

* Convert original image to grayscale image
* Apply Gaussian smoothing to the grayscale image
* Apply Canny Edge detection to detect the edges with low/high threshold
* Define a specific polygon (four sides) for masking only the region of interest
* Create a masked edges image based on the defined polygon
* Apply Hough Transform to detect and draw the lane line segments
* Combine the detected segment lines into original image

 **Note**: the parameters which are hard-coded in project file are tuned with test images

### 2. Identify potential shortcomings with your current pipeline

### 3. Suggest possible improvements to your pipeline

