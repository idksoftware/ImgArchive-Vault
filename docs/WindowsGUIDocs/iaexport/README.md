iaexport Application
This application enables the export of images from ImgArchive.

iaexport User Guide
Overview
iaexport (Image Archive Export) is a Windows desktop application that enables the export and viewing of images from the ImgArchive system. It provides functionality to view image metadata, check checkout status, and manage exported images.

Purpose
The iaexport application allows you to:

View lists of images selected for export
Access detailed properties and metadata for individual images
View image preview and EXIF data
Check the checkout/check-in status of images
Review comprehensive image information including IPTC data, location, and camera settings
System Requirements
Windows operating system
.NET 9 runtime
Image Archive system installed and configured
Appropriate permissions to access the Image Archive repository
Installation
The application is installed as part of the Image Archive suite. Configuration settings are stored in the Windows Registry and include:

Installation path
Executable path
User workspace path
Temporary file path
Usage
Launching the Application
You can launch iaexport in multiple ways:

Single image file (view properties):

Right-click on an image file in Windows Explorer
Select Open with → iaexport
The application will launch and display the image properties
Export list file (multiple images):

Open iaexport application
Select File → Open Export List
Browse to the export list file (.csv) and open it
The application will load the list of images for export
Viewing Image Properties
To view image properties:

Select an image from the list

The image properties will be displayed in the lower pane, including:

File name
File size
Image dimensions
Date taken
Camera settings (aperture, shutter speed, ISO)
Location (if available)
IPTC data (caption, keywords, copyright)
Managing Exported Images
To manage exported images:

Select an image from the list

Right-click to access the context menu

Choose an action:

Open containing folder - opens the folder where the image is stored
Check out - checks out the image for editing
Check in - checks in the edited image
Remove from export list - removes the image from the current export list
Command Line Arguments
One argument: Path to a single image metadata file (.xml or .lnk)

Opens the Properties Form for that image

Displays comprehensive metadata and preview

Two arguments: -f flag followed by a file containing a list of images

Opens the Export Form with multiple images

Format: -f <listfile.txt>

No arguments: Opens empty export form (limited functionality)

Main Features
1. Export Form (Multiple Images)
When launched with a list file, the Export Form displays:

Image List View:

Name: Image filename
Date Modified: Last modification timestamp
Type: File extension/type
Size: File size in bytes
Folder: Directory path
Available Actions:

Properties: View detailed propertiesfor selected image
Import: Import selected images (if applicable)
Cancel: Close the form
List File Format: The export list file should contain one image path per line:

2. Properties Form (Single Image)
The Properties Form provides comprehensive image information organized in multiple tabs:

General Tab
File Information:

Sequence ID / Image number
Filename and original filename
File size
CRC checksum
SHA-256 hash
File path (address in archive)
Media type
UUID (unique identifier)
Dates:

Date created
Date modified
Date added to archive
Version Control:

Revision number
Checkout status indicator
Image Tab
Title
Description
Rating and rating percentage
Label/tags
Photo Tab
Camera Settings:
Make and model
Exposure settings
Aperture
Shutter speed
ISO rating
Focal length
Flash mode
Metering mode
Tags Tab
Keywords
Hashtags
Custom tags
Location Tab
Latitude
Longitude
Location name
Scene description
IPTC Tab
Copyright & Rights:

Source URL
Usage rights
Copyright URL
Headline
Category
Source
Instructions
Creator Information:

Creator name
Job title
Address
City
State/Province
Postal code
Country
Phone
Email
Website
Camera Tab
Detailed EXIF data from the camera

Preview Tab
Image thumbnail/preview
Centered display
Automatically hidden if preview unavailable
3. Checkout Status Indicators
The Properties Form displays the checkout status with color-coded indicators:

Indicator	Status	Description
🟢 Green	Checked-in	Image is available in the archive
🟡 Yellow	Checked-out	Image is currently checked out
🔴 Red	Changed and Checked-out	Image has been modified while checked out
🔵 Blue	Changed and NOT Checked-out	Image has local changes but not checked out
4. Image Metadata Files
The application reads image metadata from XML files stored in the archive:

Supported file types:

XML files: Direct metadata files
LNK files: Shortcuts to metadata files
User Interface Elements
Export Form
Title Bar: "Export"
Image List: ListView displaying all images in export queue
Column Headers: Name, Date Modified, Type, Size, Folder
Properties Button: Opens Properties Form for selected image
Import Button: Processes import operation
Cancel Button: Closes the form
Properties Form
Title Bar: Shows <filename> Properties
Tab Control: Multiple tabs for different metadata categories
Status Indicator: Visual checkout status
Labels: Display read-only metadata
EXIF Property Grid: Detailed technical information
Preview Panel: Image thumbnail display
Tips and Best Practices
Viewing Properties:

Use the Properties Form to review all metadata before export
Check the checkout status before making changes
Review EXIF data to verify image authenticity
Working with Lists:

Create export lists as plain text files
Verify all paths exist before launching
Use full paths for reliability
Metadata Files:

Ensure .imga\metadata folder structure exists
XML files must match the image filename
Shortcut (.lnk) files are supported for convenience
Checkout Management:

Always check the status indicator before editing
Green status means the image is safe to check out
Red/Yellow indicators mean the image is already in use
Error Messages
Error Message	Meaning	Solution
"Path is not valid please check if this path exists"	File or path doesn't exist	Verify the file path and ensure it's accessible
"Invalid arguments? please check arguments passed"	Incorrect command line syntax	Use the correct argument format
"File not found"	Metadata XML file missing	Verify the .imga\metadata\ folder structure
Preview tab missing	Image file cannot be loaded	Image file may be corrupt or inaccessible
Troubleshooting
Problem: Properties Form won't open

Verify the XML metadata file exists
Check the .imga\metadata\ folder structure
Ensure file permissions allow read access
Problem: Preview doesn't display

Check if the actual image file exists at the specified path
Verify the image format is supported
Review file permissions
Problem: Export list shows no files

Verify the list file contains valid paths
Check that files exist at the specified locations
Ensure proper line endings in the text file
Problem: Checkout status not showing

Verify workspace path is configured correctly
Check that checkout status files exist
Review Image Archive configuration
File Locations
Configuration
Registry settings stored under Image Archive configuration

Metadata Storage
Checkout Status
Temporary Files
Integration with Image Archive
iaexport is designed to work with the broader Image Archive system:

Related Applications:

iachkin: Check-in images to the archive
iachkout: Check-out images from the archive
iadrvscan: Scan drives for images
iaprop: Standalone properties viewer
iaadmingui: Archive administration
Workflow Integration:

Images are checked out using iachkout
Export lists are generated from archive queries
iaexport displays image information and status
Modified images are checked back in using iachkin
Supported Image Formats
The application supports metadata for all formats supported by Image Archive, including:

JPEG (.jpg, .jpeg)
PNG (.png)
TIFF (.tif, .tiff)
RAW formats (various camera-specific formats)
BMP (.bmp)
GIF (.gif)
Technical Notes
Application namespace: iaexport
Requires Image Archive system installation
Uses XML-based metadata storage
Supports Windows shortcut (.lnk) files for metadata access
Thread-safe UI updates for long-running operations
Compatible with Image Archive versioning system
Property Grid Features
The EXIF Property Grid provides:

Sortable properties
Searchable metadata fields
Copy-to-clipboard functionality
Hierarchical property organization
Read-only display of technical data
For more information about the Image Archive system, including check-in/check-out workflows and archive administration, please refer to the main Image Archive documentation.