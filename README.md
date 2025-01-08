# Interactive Image Processing Tool

## Overview

This is a graphical user interface (GUI)-based tool designed to make image processing tasks accessible and user-friendly. This application allows users to upload an image and perform essential image processing operations like contrast calculation, grayscale conversion with customizable weights, histogram analysis, binarization, and morphological filtering.

Whether you are a beginner in image processing or an expert looking for a quick utility to test ideas, this tool provides a simple, intuitive interface for these tasks.

---

## Features

- **Upload and View Image**: 
  - Upload an image and preview it in the GUI.

- **Calculate RMS Contrast**:
  - Quickly calculate and display the root mean square (RMS) contrast for the uploaded image.

- **Convert to Grayscale**:
  - Transform colorful images into grayscale using customizable RGB weights for further analysis.

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
   ```

2. **Upload Image**:
    - Click on the "Upload / Change Image" button to select an image from your computer.
    - The image will be displayed in the respective axes within the GUI.

3. **Perform Image Processing**:
    - **Calculate Contrast**: Click the "Calculate Contrast" button to compute the RMS contrast for the uploaded image.
    - **Convert to Grayscale**: Click the "Convert to Grayscale" button to convert the uploaded image to grayscale using customizable RGB weights.
    - **Show Histogram**: Click the "Show Histogram" button to view the histogram of intensity distribution for the grayscale image.
    - **Binarize Image**: Click the "Binarize Image" button to perform binarization on the grayscale image.
    - **Morphological Filtering**: Click the "Morphological Filtering" button to apply morphological operations like dilation or erosion on the binarized image.

---

## Requirements

- MATLAB R2021a or later
- Image Processing Toolbox

---

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/mahiiyh/interactive-image-processing-tool.git
   ```
2. Navigate to the project directory:
   ```sh
   cd interactive-image-processing-tool
   ```

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Additional Information

A detailed report is included in the repository for a more comprehensive view of the tool's capabilities and usage.