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

#### 1.2 In order to fully extend and draw a single line on the left and right lane, I created draw_full_lines() funtion from draw_lines() function as below:

* Calculate the slope of each line segments
* Devide the segments to right & left ones based on the slope (right segment with positive slope & left segment with negative slope)
* Select the reference points for right & left line. Currently chosing the middle points of the first segments. Will optimize this selection for drawing better line.
* Calculate the positions for the full lines (within masked polygon) based on reference point and average slope of all the left/right segments using the equation y = wx + b (w: weight or slope, b: bias)
* Draw the full lines from the calculated positions

#### 1.3 Here are the images (with line segments and full lines) created by the pipelines:

* solidWhiteRight.jpg

  <img src="test_images_output/addLine_solidWhiteRight.jpg" width="320" title="Image with line segments"/>
  <img src="test_images_output/addFullLine_solidWhiteRight.jpg" width="320" title="Image with full lines"/>

* solidWhiteCurve.jpg

  <img src="test_images_output/addLine_solidWhiteCurve.jpg" width="320" title="Image with line segments"/>
  <img src="test_images_output/addFullLine_solidWhiteCurve.jpg" width="320" title="Image with full lines"/>

* solidYellowLeft.jpg

  <img src="test_images_output/addLine_solidYellowLeft.jpg" width="320" title="Image with line segments"/>
  <img src="test_images_output/addFullLine_solidYellowLeft.jpg" width="320" title="Image with full lines"/>

* solidYellowCurve2.jpg

  <img src="test_images_output/addLine_solidYellowCurve2.jpg" width="320" title="Image with line segments"/>
  <img src="test_images_output/addFullLine_solidYellowCurve2.jpg" width="320"  title="Image with full lines"/>

* solidYellowCurve.jpg

  <img src="test_images_output/addLine_solidYellowCurve.jpg" width="320" title="Image with line segments"/>
  <img src="test_images_output/addFullLine_solidYellowCurve.jpg" width="320" title="Image with full lines"/>

* whiteCarLaneSwitch.jpg

  <img src="test_images_output/addLine_whiteCarLaneSwitch.jpg" width="320" title="Image with line segments"/>
  <img src="test_images_output/addFullLine_whiteCarLaneSwitch.jpg" width="320" title="Image with full lines"/>

### 2. Identify potential shortcomings with your current pipeline

### 3. Suggest possible improvements to your pipeline

