
#  Backend - Animation Downloader


This document explains the functioning of the animation generator for the purposes of development. For deployment and the user guide, see README.md.



## Components


### mp4_exporter.py 


Defines a function to apply a color tint to an image.
```python
def apply_tint(image, color):
```
Create_MP4 Function:
```python
def create_MP4(vfg_file, startStep=_START_DEFAULT, stopStep=_END_DEFAULT):
```
*   This is the main function used to create the MP4 video.
*   Reads visual stage data from the JSON file.
*   Sets up the plotting area and axes.
*   Decodes and stores image data.
*   Defines the update function to refresh the animation for each frame.
*   Creates the animation using matplotlib's FuncAnimation.
*   Saves the animation as an MP4 format using FFMpegWriter.
*   Saves the MP4 video to memory and returns it.

#### GIF_exporter.py

Create_GIF Function:
```python
def create_GIF(vfg_file, startStep=_START_DEFAULT, stopStep=_END_DEFAULT):
```
*  This is the main function used to create the GIF animation.
*  Reads visual stage data from the JSON file.
*  Sets up the plotting area and axes.
*  Decodes and stores image data.
*  Defines the update function to refresh the animation for each frame.
*  Creates the animation using matplotlib's FuncAnimation.
*  Saves the animation as a GIF format using LoopingPillowWriter.
*  Saves the GIF animation to memory and returns it.

  

#### Media_exporter.py

Function export_media(vfg_file, format, parameters):
```python
def export_media(vfg_file, format, parameters): 
```

*   Check if parameters are provided, if not, throw an exception.
*   Extract startStep and stopStep from the parameters, which define the range of visual stages to be exported. If these values are not provided in the parameters, default values of 0 and 999999 are used respectively.
*   Ensure that startStep and stopStep are not negative.
*   Depending on the specified format (format), call the corresponding exporter module function to create the media file:
If the format is "mp4", call mp4_exporter.create_MP4.
If the format is "png", call png_exporter.create_PNGs.
If the format is "gif", call gif_exporter.create_GIF.
If the format is "webm" or not any of the above, return "error".

#### png_exporter.py

Function apply_tint(image, color):
```python
def apply_tint(image, color):
```
* Applies a color tint to an RGBA image. It multiplies the red, green, and blue channels by
the corresponding color values and ensures the values are within the valid range (0-255).

Function create_PNGs(vfg_file, startStep, stopStep):
```python
def create_PNGs(vfg_file, startStep=_START_DEFAULT, stopStep=_END_DEFAULT):
```
* Reads a JSON file (vfg_file) that contains the visual stages and sprites information.
* Determines the range of stages to process based on startStep and stopStep.
Calculates the maximum dimensions needed for the images based on the sprites'
positions and sizes.
* Initializes dictionaries for storing images and tinted images (caching).
Image Loading:
Loads and decodes images from base64 strings found in the JSON file's imageTable.
Converts images to RGBA format and stores them in the image_table dictionary.

#  Backend - Parameters Protocol
![](images/architecture/data_standard.png)
Data sent from the frontend to the backend via POST Request will be formatted in three nested dictionaries:

1. requestData
a. This dictionary contains two keys: method and body.
b. method has a default value which is 'POST'.
c. body is the second level nested dictionary.
2. body
a. All data within this dictionary needs to be serialised using `JSON.stringify()`.
b. This dictionary contains two keys: 'vfg', 'fileType' and 'parameters'.
c. 'vfg' contains vfgText which is the complete data for all steps of specific animations.
d. 'fileType' should have values of either 'mp4', 'png' or 'gif'.
e. 'parameters' is the third level nested dictionary.
3. parameters
a. This dictionary contains three keys: 'startStep', 'stopStep' and 'speed' (and more can be added/amended if required).
b. 'startStep' default value is 0. This value can be changed based on the user's input when downloading media. The backend will handle invalid values by auto-selected the closest possible value.
c. 'stopStep' default value is 1. This value can be changed based on the user's input when downloading media. The backend will handle invalid values by auto-selected the closest possible value.
d. 'speed' default value is 1. This value can be changed based on the user's input when downloading media. (this has not been implemented)
e. A wrapper class for parameters has been implemented in src/frontend/src/pages/PageFour/index.js for a clearer structure of parameters type implemented based on different media type. Any irrelevant parameter for a specific file type can be removed from the switch statement.

Example packing usage:
![](images/architecture/example_packing.png)