# interactive-image-processing-tool

## Overview

This is a graphical user interface (GUI)-based tool designed to make image processing tasks accessible and user-friendly. This application allows users to upload multiple images and perform essential image processing operations like contrast calculation, grayscale conversion, histogram analysis, and binarization with morphological filtering.

Whether you are a beginner in image processing or an expert looking for a quick utility to test ideas, this tool provides a simple, intuitive interface for these tasks.

---

## Features

- **Upload and View Images**: 
  - Upload up to three images simultaneously and preview them in the GUI.

- **Calculate RMS Contrast**:
  - Quickly calculate and display the root mean square (RMS) contrast for each image.

- **Convert to Grayscale**:
  - Transform colorful images into grayscale for further analysis.

- **Display Histograms**:
  - Visualize the intensity distribution of grayscale images through histograms.

- **Binarize and Morphological Filtering**:
  - Convert images to binary format and apply morphological filtering to clean noise and enhance features.

---

## How to Use

1. **Run the Application**:
   Open MATLAB, navigate to the directory containing the `main.m` file, and run the script.

   ```matlab
   main

2. **Upload Images**:
    - Click on the "Upload Image 1", "Upload Image 2", or "Upload Image 3" buttons to select images from your computer.

    - The images will be displayed in the respective axes within the GUI.

3. **Perform Image Processing**:
    - Calculate Contrast: Click the Calculate Contrast button to compute the RMS contrast for all uploaded images.
    - Convert to Grayscale: Convert all uploaded images to grayscale for analysis.
    - Show Histogram: View histograms of intensity distribution for each grayscale image.
    - Binarize and Filter: Perform binarization and morphological filtering on the images for feature enhancement.