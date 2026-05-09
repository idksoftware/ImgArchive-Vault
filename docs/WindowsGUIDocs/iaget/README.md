# iaget - Image Archive Get Application

## Overview
The **iaget** application is a Windows Forms-based GUI tool for retrieving images from the ImgArchive system. It allows users to extract archived images to the workspace or picture space based on specific selection criteria such as date ranges and filename patterns.

## Purpose
This application provides a graphical interface for the `get` command in the ImgArchive command-line interface, making it easier to retrieve images from the archive without using command-line arguments.

## Features
- **Date and Filename Criteria Selection**: Filter images by date ranges and filename patterns
- **Flexible Destination Options**: Retrieve images to workspace, picture space, or both
- **Progress Tracking**: Real-time progress monitoring during the retrieval process
- **User-Friendly Interface**: Simple, intuitive GUI for archive operations

## User Interface

### Main Window Components

#### 1. Selection Criteria Section
- **Date / Filename criteria** button: Opens a dialog to specify:
  - Date ranges for filtering images
  - Filename patterns (e.g., `2025-09-08/*.jpg`)
- **Select All** checkbox: Select all images matching the criteria

#### 2. Destination Section
Choose where to retrieve the images:
- **Pictures space**: Extract images to the configured picture directory
- **Workspace**: Extract images to the workspace directory
- Both options can be selected simultaneously

#### 3. Action Buttons
- **Get**: Start the retrieval process
- **Done**: Close the application

## How to Use

### Step 1: Define Selection Criteria
1. Click the **Date / Filename criteria** button
2. Specify your search parameters:
   - Date range (e.g., `2025-09-08`)
   - Filename pattern (e.g., `*.jpg`, `IMG_*.png`)
3. Alternatively, check **Select All** to retrieve all images

### Step 2: Select Destination
1. Check **Pictures space** to retrieve images to your pictures directory
2. Check **Workspace** to retrieve images to your workspace
3. You can select both destinations if needed

### Step 3: Retrieve Images
1. Click the **Get** button to start the retrieval process
2. A progress window will display:
   - Percentage complete
   - Time remaining
   - Current file being processed
   - Result status (Success, Warnings, Errors, or Fatal)

### Step 4: Complete
1. Review the results in the progress window
2. Click **Done** to close the application

## Selection Criteria Examples

### Date-based Retrieval
- `2025-09-08/*.*` - All files from September 8, 2025
- `2025-09-*/*.*` - All files from September 2025
- `2025-*-*/*.*` - All files from 2025

### Filename Pattern Retrieval
- `*-*-*/*.jpg` - All JPEG files
- `*-*-*/IMG_*.png` - All PNG files starting with "IMG_"
- `*-*-*/vacation*.*` - All files with "vacation" in the name

## Command Line Execution
Behind the scenes, iaget executes the following command: