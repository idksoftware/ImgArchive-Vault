# iaprop - Image Archive Properties Viewer

## Overview
The **iaprop** application is a Windows Forms-based GUI tool for viewing and managing metadata properties of images in the ImgArchive system. It provides a comprehensive view of image metadata including EXIF, IPTC, XMP, and custom archive properties.

## Purpose
This application provides a graphical interface for viewing detailed image metadata stored in the ImgArchive system. It displays properties from XML metadata files associated with archived images, making it easy to review technical details, copyright information, camera settings, GPS data, and archive status without using command-line tools.

## Features
- **Comprehensive Metadata Display**: View EXIF, IPTC, and XMP metadata
- **Multiple Property Categories**: Organized tabs for General, Image, Photo, Camera, Tags, and IPTC information
- **Archive Status Tracking**: View checkout status and version information
- **Batch Processing**: View properties for multiple images from a file list
- **User-Friendly Interface**: Tabbed interface with organized property categories

## Launching the Application

### Method 1: Single Image
Opens the properties viewer for a single image metadata file.

### Method 2: Multiple Images
Selects a list of metadata files to view in the properties viewer.

### Method 3: Interactive Mode
Opens the main properties window with a list of images to browse.
Opens with the option to manually select images from the workspace.

## User Interface

### Main Properties Window (Multiple Images)

When launched with a file list or no arguments, the main window displays:

- **Image List**: Shows all images available for viewing
- **Workspace Button**: Opens file browser to select images from the workspace
- **Properties Button**: Opens detailed properties for the selected image

### Properties Form (Single Image)

The properties form contains multiple tabs with detailed metadata:

#### 1. General Tab
Displays archive and file information:
- **Number**: Archive sequence number
- **Filename**: Original filename
- **File Path**: Location in the archive
- **UUID**: Unique identifier
- **Description**: Image description
- **Label**: Color label or classification
- **Rating**: Star rating (0-5)
- **Rating Percent**: Percentage rating
- **Media Type**: File format (JPEG, PNG, etc.)
- **SHA**: SHA hash for integrity verification
- **CRC**: CRC checksum
- **Size**: File size in bytes
- **Date Created**: File creation date
- **Last Modified**: Last modification date
- **Date Added**: Date added to archive
- **Version**: Archive version number
- **Archive Name**: Name of the archive
- **Checked Status**: Current checkout status

#### 2. Image Tab
Technical image properties:
- **Width**: Image width in pixels
- **Height**: Image height in pixels
- **X Resolution**: Horizontal resolution (DPI)
- **Y Resolution**: Vertical resolution (DPI)
- **Bits Per Sample**: Color depth
- **View Rotation**: Image orientation
- **Resolution Unit**: Unit of measurement
- **Sample Color**: Color space
- **Compression**: Compression method

#### 3. Photo Tab
Photography metadata:
- **Title**: Image title
- **Subject**: Subject matter
- **Image Date**: Date photo was taken
- **Author**: Photographer/creator
- **Comments**: User comments
- **Keywords**: Associated keywords
- **Tags**: User-defined tags
- **Subset Time Original**: Original capture timestamp

#### 4. Camera Tab
Camera settings and information:
- **Maker**: Camera manufacturer
- **Model**: Camera model
- **Software**: Camera firmware/software
- **Source URL**: Source location
- **EXIF Version**: EXIF metadata version
- **Capture Date**: Date and time of capture
- **Exposure Program**: Auto/Manual/Aperture priority
- **ISO Speed Rating**: ISO sensitivity
- **Exposure Bias**: Exposure compensation
- **Exposure Time**: Shutter speed
- **Aperture**: F-number
- **Metering Mode**: Metering method
- **Light Source**: Lighting conditions
- **Flash**: Flash mode and status
- **Focal Length**: Lens focal length
- **Focal Length in 35mm**: 35mm equivalent focal length
- **Sensing Method**: Sensor type
- **Digital Zoom**: Digital zoom ratio
- **White Balance**: White balance setting
- **Scene Capture Type**: Scene mode
- **Contrast**: Contrast setting
- **Saturation**: Saturation setting
- **Sharpness**: Sharpness setting
- **Brightness Value**: Brightness level
- **Subject Distance Range**: Distance to subject
- **Max Aperture**: Maximum aperture value
- **Flash Energy**: Flash power
- **Color Space**: Color space (sRGB, Adobe RGB)

#### 5. Tags Tab
Keyword and tag management:
- **Keywords**: Searchable keywords
- **Tags/Hashtags**: Social media-style tags
- **Category**: Image category
- **Hard Copy Location**: Physical storage location

#### 6. IPTC Tab
IPTC metadata for publishing and copyright:
- **Headline**: Brief headline
- **Category**: IPTC category
- **Source**: Image source
- **Instructions**: Usage instructions
- **Copyright**: Copyright notice
- **Copyright URL**: Copyright information link
- **Source URL**: Original source URL
- **Usage Rights**: Licensing information
- **Creator**: Creator/photographer name
- **Job Title**: Creator's job title
- **Address**: Creator's address
- **City**: City
- **State**: State/province
- **Postal Code**: ZIP/postal code
- **Country**: Country
- **Phone**: Contact phone number
- **Email**: Contact email
- **Website**: Creator's website

#### 7. GPS Tab
Location information:
- **Latitude**: Geographic latitude
- **Longitude**: Geographic longitude
- **Location**: Location description
- **Scene**: Scene description
- **GPS Time Stamp**: GPS timestamp

## Checkout Status Indicators

The properties viewer displays the checkout status of images with color-coded indicators:

- **Green Icon**: Image is checked out and available for editing
- **Yellow Icon**: Image is checked in (read-only)
- **Red Icon**: Image has been modified and is checked out
- **Orange Icon**: Image has been modified but NOT checked out

## Metadata File Format

The application reads XML metadata files stored in the `.imga/metadata/` directory. Each image has a corresponding XML file with the structure:

## Output and Results

### Viewing Results
All metadata is displayed in the tabbed interface with organized categories. Properties are read-only and sourced from the XML metadata files.

### Empty or Missing Values
Properties without values are displayed as:
- Empty fields
- `-------------` (placeholder text)
- "Unknown" for version information when unavailable

### Editing Metadata
The `iaprop` application is a viewer only. To edit metadata, use the appropriate ImgArchive command-line tools or checkout the image for editing.

## Command-Line Arguments

| Argument | Description | Example |
|----------|-------------|---------|
| (none) | Opens main window with workspace selection | `iaprop.exe` |
| `<xml-file>` | Opens properties for a single XML metadata file | `iaprop.exe image.jpg.xml` |
| `<list-file>` | Opens main window with list of images from file | `iaprop.exe imagelist.txt` |

## File List Format

When using a file list, create a text file with one image path per line:

The application will automatically locate the corresponding XML metadata files in the `.imga/metadata/` directory.

## Requirements

- .NET 9 or later
- Windows operating system
- ImgArchive system installed and configured
- Access to the workspace and archive directories

## Error Messages

| Error | Description | Solution |
|-------|-------------|----------|
| "Path is not valid" | Invalid file or directory path | Verify the path exists and is accessible |
| "Invalid arguments" | Incorrect command-line arguments | Check argument format and file paths |
| "File not found" | Metadata XML file doesn't exist | Ensure the image is archived and metadata exists |

## Tips

1. **Large Image Sets**: When viewing properties for multiple images, use the file list method to avoid memory issues
2. **Quick Access**: Right-click integration can be configured for quick access from Windows Explorer
3. **Metadata Verification**: Use this tool to verify metadata after import or modification operations
4. **Archive Integrity**: Check SHA and CRC values to ensure file integrity

## Related Applications

- **iaget**: Retrieve images from the archive
- **iaset**: Modify image metadata
- **iaimport**: Import images into the archive
- **iacheckout**: Checkout images for editing

## Version Information

- Target Framework: .NET 9
- Application Type: Windows Forms
- Architecture: x64

---

For more information about the ImgArchive system, refer to the main documentation.