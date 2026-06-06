# iascanner - Image Archive Scanner Application

## Overview
The **iascanner** application is a Windows Forms-based GUI tool for scanning and discovering images on attached drives and storage devices. It helps users identify folders containing images on external drives, USB devices, and other storage media, preparing them for import into the ImgArchive system.

## Purpose
This application provides a graphical interface for scanning storage devices to locate image files and folders. It's designed to work as the first step in the image archiving workflow, identifying where images are located before importing them into your archive.

## Features
- **Automatic Drive Detection**: Scans and displays all attached drives and storage devices
- **Drive Information Display**: Shows drive type, total size, and available free space
- **Intelligent Image Scanning**: Recursively scans directories to find image files
- **Folder Grouping**: Organizes discovered images by folder location
- **Image Count Statistics**: Displays the number of images found in each folder
- **Progress Tracking**: Real-time progress monitoring during scan operations
- **Import Queue Integration**: Prepares discovered folders for import into the archive
- **Custom Path Selection**: Browse and select specific paths to scan

## System Requirements
- **.NET 9.0** or later
- **Windows 8.0** or later
- Sufficient permissions to access attached drives

## User Interface

### 1. Attached Drives Window

This is the main window that displays when you launch the application.

#### Components:
- **Drive List View**: Displays all detected drives with the following columns:
  - **Drive Name**: Letter or identifier (e.g., C:, D:, E:)
  - **Drive Type**: Type of storage (Fixed, Removable, Network, CDRom, etc.)
  - **Total Size**: Total capacity of the drive
  - **Available Space**: Free space available on the drive

#### Actions:
- **Double-click** a drive to open the Scan Drive window
- **Select** a drive and click to proceed to scanning

### 2. Scan Drive Window

This window allows you to configure and execute the scan for a selected drive.

#### Components:
- **Title Bar**: Displays "Scan Drive - [Drive Letter]"
- **Volume Label**: Shows the drive's volume label if available
- **Folder Path Text Box**: Displays the current path to be scanned
- **Browse Button**: Opens a folder browser to select a specific path
- **Find Images Button**: Starts the scanning process
- **Progress Bar**: Shows scan progress in real-time
- **Status Labels**:
  - **Current Folder**: Displays the folder currently being scanned
  - **Error Messages**: Shows any access errors encountered during scanning

#### Features:
- Scans all subdirectories recursively
- Tracks progress based on drive usage
- Handles permission errors gracefully
- Reports scan status in real-time

### 3. Drive Images Window

This window displays the results after scanning is complete.

#### Components:
- **Title Bar**: Shows drive information (e.g., "Volume Label (D:) - 1.81 TB")
- **Image Folders List**: Displays all folders containing images with:
  - **Folder Path**: Full path to the folder
  - **Image Count**: Number of images found in that folder
  - **Status Column**: Shows import queue status

#### Actions:
- **Select Folders**: Choose which folders to add to the import queue
- **Add to Queue**: Prepare selected folders for import into the archive
- **View Details**: Examine folder contents and image counts

## How to Use

### Step 1: Launch the Application
1. Run **iascanner.exe**
2. The application will automatically detect all attached drives
3. Wait for the drive list to populate (shows progress during detection)

### Step 2: Select a Drive to Scan
1. Review the list of available drives
2. Check the drive type and available space
3. **Double-click** the drive you want to scan
   - OR -
   Select the drive and proceed to the next step

### Step 3: Configure Scan Settings
1. The Scan Drive window opens
2. Review the default path (usually the root of the selected drive)
3. **Optional**: Click **Browse** to select a specific subfolder to scan
4. Verify the folder path in the text box

### Step 4: Scan for Images
1. Click the **Find Images** button
2. Monitor the progress bar as the scan proceeds
3. Observe the current folder being scanned in the status area
4. Wait for the scan to complete (time varies based on drive size and content)

### Step 5: Review Scan Results
1. The Drive Images window opens automatically when scanning completes
2. Review the list of folders containing images
3. Check the image count for each folder
4. Select folders you want to import

### Step 6: Prepare for Import
1. **Select** the folders you want to add to the import queue
2. The folders are saved to the import queue for processing by other ImgArchive tools
3. Queue file location: `%LocalAppData%\IDK-Software\ImgArchive\ImportQueue\ImportQueue.txt`

## Supported Image Formats
The scanner identifies folders containing common image file formats, including:
- JPEG (.jpg, .jpeg)
- PNG (.png)
- TIFF (.tiff, .tif)
- BMP (.bmp)
- GIF (.gif)
- RAW formats (depending on configuration)

## Local Application Data
The application stores temporary data and import queues at:
```
%LocalAppData%\IDK-Software\ImgArchive\ImportQueue\

```

This directory is automatically created if it doesn't exist.

## Error Handling

### Common Issues and Solutions

#### "Not Ready" Drive Status
- **Cause**: Drive is not accessible (no media inserted, disconnected, etc.)
- **Solution**: Insert media or reconnect the drive and restart the application

#### Access Denied Errors During Scan
- **Cause**: Insufficient permissions to access certain folders
- **Solution**: These folders are skipped automatically; check the error label for details

#### Slow Scanning
- **Cause**: Large drives with many files
- **Solution**: Use the Browse feature to scan specific subfolders instead of the entire drive

## Workflow Integration
The iascanner application is typically used as the first step in the ImgArchive workflow:

1. **iascanner** → Discover images on attached drives
2. **iaimport** → Import discovered images into the archive
3. **iaget** → Retrieve images from the archive

## Tips and Best Practices

### For Best Performance:
- Close unnecessary applications while scanning large drives
- Scan specific folders instead of entire drives when possible
- Allow the scan to complete without interruption

### For Accurate Results:
- Ensure drives are properly connected before starting
- Run the application with appropriate permissions
- Check the error label if folders are being skipped

### For Organizing Results:
- Review folder counts before adding to import queue
- Select only folders with significant image content
- Note folder paths for later reference

## Technical Details

### Project Information
- **Target Framework**: .NET 9.0 (Windows)
- **Output Type**: Windows Forms Application
- **Platform**: Windows 8.0 and later

### Dependencies
- **iabase**: Core library for archive operations
- **iaforms**: Shared form components
- **iaabout**: About dialog

## Troubleshooting

### Application Won't Start
- Verify .NET 9.0 runtime is installed
- Check that all dependencies are present
- Review Windows Event Logs for error details

### Drives Not Appearing
- Refresh the application
- Check drive connections
- Verify drive is mounted in Windows Explorer

### Scan Hangs or Freezes
- Wait for operation to complete (may take time on large drives)
- Check Task Manager for resource usage
- Close and restart if necessary

## Version Information
This documentation is for iascanner targeting **.NET 9.0**.

## Related Applications
- **iadrvscan**: Command-line drive scanner
- **iaimport**: Image import tool
- **iaget**: Image retrieval tool



For more information about the ImgArchive system, visit the project repository:
https://github.com/idksoftware/ImgArchiveGUI
```

I've created a comprehensive user guide for the **iascanner** application. The documentation includes:

✅ **Overview and Purpose** - Clear explanation of what the application does  
✅ **Features** - All major capabilities identified from the codebase  
✅ **User Interface** - Detailed description of all three main windows  
✅ **Step-by-Step Instructions** - Complete workflow from launch to import queue  
✅ **Error Handling** - Common issues and solutions  
✅ **Integration** - How it fits in the ImgArchive workflow  
✅ **Technical Details** - Framework and dependency information  
✅ **Troubleshooting** - Help for common problems  

The documentation is formatted in Markdown and ready to be saved to `iascanner\readme.md`. Would you like me to adjust any sections or add additional information?