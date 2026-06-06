# iadrvscan User Guide

## Overview

**iadrvscan** (Image Archive Drive Scanner) is a Windows desktop application designed to scan drives and directories for image files. It helps you locate, organize, and queue images for import into the Image Archive system.

## Purpose

The iadrvscan application allows you to:
- Scan entire drives or specific folders for image files
- View statistics about images found in directories
- Identify folders containing images
- Queue images for import into the Image Archive system

## System Requirements

- Windows operating system
- .NET 9 runtime
- Appropriate permissions to access drives and folders being scanned

## Installation

The application is installed as part of the Image Archive suite. The installation path is configured during the main Image Archive installation.

## Usage

### Launching the Application

You can launch iadrvscan in two ways:

1. **With a path argument** (recommended):
    - Open a command prompt.
    - Navigate to the iadrvscan installation directory.
    - Run the command: `iadrvscan.exe "X:\path\to\your\folder"`
      (Replace `X:\path\to\your\folder` with the actual path you want to scan.)

    This method allows you to start the application with a specific folder already selected for scanning.

2. **Without arguments**:
    - Open a command prompt.
    - Navigate to the iadrvscan installation directory.
    - Run the command: `iadrvscan.exe`

    This will launch the application without opening any specific folder. You can then use the application's interface to select the folder or drive you want to scan.

---

### Scanning for Images

- After launching iadrvscan, you can immediately start scanning for images.
- To scan a specific folder or drive, use the "Select Folder" or "Select Drive" buttons on the main interface.
- Once you have selected a folder or drive, the application will begin scanning for image files.
- While scanning, the application will display the progress and update you on the number of images found.

### Viewing Scan Results

- After the scan is complete, iadrvscan will present the results in an organized manner.
- You can view the statistics of the scan, including the total number of images found and the total size of these images.
- The application also provides insights into the distribution of image files across the scanned directories.

### Importing Images to Image Archive

- iadrvscan allows you to queue images for import into the Image Archive system.
- You can select individual images or entire folders of images to be queued for import.
- Once you have made your selections, use the "Queue for Import" button to add the images to the import queue.
- After queuing the images, you can proceed to the Image Archive application to complete the import process.

## User Interface Elements

### Scan Drive Window
- **Title**: Shows the drive/volume being scanned
- **Volume Label**: Displays the volume name
- **FolderPath**: Text box showing the current path to scan
- **Browse Button**: Allows selecting a different folder
- **Find Images Button**: Starts the scanning process
- **Progress Bar**: Shows scan completion percentage
- **Current Folder Label**: Displays the folder currently being scanned
- **Error Label**: Shows any errors encountered during scanning

### Drive Images Window
- **Title**: Shows drivename, volume label, and total size
- **Image List**: ListView displaying all folders with images
- **Statistics**: Number of images per folder

## Tips and Best Practices

1. **Scanning Large Drives**: 
 - Scanning entire drives (especially network drives) can take considerable time
 - The progress bar will update to show completion percentage

2. **Permissions**: 
 - Ensure you have read permissions for the folders being scanned
 - System folders or protected directories may show permission errors

3. **Scan Results**:
 - Results are temporarily stored in yourlocal application data folder
 - Review the scan results before adding to the import queue

4. **Network Drives**:
 - Network drives can be scanned but may be slower
 - Ensure stable network connection during scanning

## Error Messages

| Error Message | Meaning | Solution|
|--------------|---------|----------|
| "Path is not valid please check if this path exists" | The specified path doesn't exist | Verify the path and ensure it's accessible |
| "Invalid arguments? please check arguments passed" | Incorrect command line arguments | Usethe correct argument format (single path) |
| Permission errors during scan | Insufficient access rights | Run with appropriate permissions or skip protected folders |

## Troubleshooting

**Problem**: Scan doesn't start
- Verify the path exists and is accessible
- Check you have read permissions for the folder

**Problem**: Scan is very slow
- Large drives or network locations take longer
- Consider scanning specific folders rather than entire drives

**Problem**: Some folders not scanned
- Check folder permissions
- Review error messages during the scan

**Problem**: Noimages found
- Verify the folders contain supported image formats
- Check file extensions are recognized by the Image Archive system

## Integration with Image Archive

iadrvscan is designed to work with the broader Image Archive system:
- Creates import queues for the main archive application
- Stores queue datain the standard Image Archive local app data location
- Compatible with Image Archive configuration and settings

## Support Files

Scan results may be temporarily stored as CSV files in:

## Related Applications

- **iachkin**: Image Archive check-in application
- **iachkout**: Image Archive check-out application  
- **iaadmingui**: Image Archive administration interface

## Technical Notes

- Application namespace: `iaexport`
- Uses background worker threads for scanning to keep UI responsive
- Supports all drives recognized by Windows (local, network, removable)
- Drive space calculations include used vs. available space

---

*For more information about the Image Archive system, please refer to the main Image Archive documentation.*