# iaabout - Image Archive About Dialog
[<<Back](../README.md)
## Overview
The **iaabout** application is a standalone Windows Forms application that displays version, copyright, and product information for the ImgArchive system. It provides a simple, professional "About" dialog that shows details about the software.

## Purpose
This application serves as a dedicated information display tool for the ImgArchive suite, showing:
- Product name and description
- Version information
- Copyright details
- Company information
- Product logo

## System Requirements
- .NET 9 runtime
- Windows operating system

## Features
- **Clean, Professional Interface**: Standard Windows About dialog layout
- **Assembly Information Display**: Automatically reads version and metadata from the assembly
- **Product Logo**: Displays the ImgArchive logo
- **Read-Only Description**: Provides detailed product description
- **Easy Dismissal**: Simple OK button to close the dialog

## User Interface

### Dialog Components

The About dialog is organized in a two-column layout:

#### Left Column
- **Product Logo**: Displays the ImgArchive logo image

#### Right Column
Displays the following information (from top to bottom):

1. **Product Name**
   - Shows: "Image Archive"
   - The official name of the product

2. **Version**
   - Format: "Version X.X.X.X"
   - Displays the current version number from assembly metadata

3. **Copyright**
   - Shows: "Copyright 2019 - 2021 IDK Solutions Ltd"
   - Legal copyright information

4. **Company Name**
   - Shows: "IDK Solutions Ltd"
   - The company that developed the software

5. **Description Text Box**
   - Default text: "Image Archive is a product that provides a safe environment to store and manage editing of images"
   - Multi-line, read-only text box
   - Includes scroll bars for longer descriptions
   - Description is loaded from assembly metadata

6. **OK Button**
   - Located at the bottom-right corner
   - Closes the dialog when clicked

## How to Use

### Launching the Application

#### Standalone Launch
1. Navigate to the ImgArchive installation directory
2. Run `iaabout.exe`
3. The About dialog will appear

#### From Other ImgArchive Applications
The About dialog is typically launched from within other ImgArchive applications through:
- **Help menu** → **About**
- **About button** in various dialogs
- **System tray context menu** (when using iatray)

### Viewing Information

1. **Read Version Information**
   - The version number is displayed prominently
   - Useful for troubleshooting and support requests

2. **View Product Details**
   - Read the product description in the text box
   - Scroll if the description is longer than the visible area

3. **Check Copyright**
   - Verify copyright and company information
   - Useful for licensing verification

### Closing the Dialog

There are several ways to close the About dialog:
- Click the **OK** button
- Press **Enter** (OK button is the default accept button)
- Press **Escape** (OK button is the cancel button)
- Click the window's close button (X)

## Dialog Properties

### Window Characteristics
- **Size**: Fixed at 724 × 544 pixels
- **Border Style**: Fixed dialog (cannot be resized)
- **Position**: Centers on the parent window (or screen if standalone)
- **Taskbar**: Does not show in Windows taskbar
- **Maximize/Minimize**: Buttons are disabled
- **Icon**: Displays the ImgArchive application icon

### Layout Details
The dialog uses a table layout with:
- **Logo Column**: 33% width (left side)
- **Information Column**: 67% width (right side)
- **Row Distribution**:
  - Product Name: 10%
  - Version: 10%
  - Copyright: 10%
  - Company Name: 10%
  - Description: 50%
  - OK Button: 10%

## Assembly Information

The About dialog reads information from assembly attributes defined in the project:

- **AssemblyTitle**: The application title
- **AssemblyVersion**: Version number (major.minor.build.revision)
- **AssemblyDescription**: Detailed product description
- **AssemblyProduct**: Product name
- **AssemblyCopyright**: Copyright notice
- **AssemblyCompany**: Company name

This information is automatically populated from the assembly metadata, ensuring consistency across builds.

## Use Cases

### Version Verification
When reporting issues or seeking support:
1. Launch **iaabout.exe**
2. Note the version number displayed
3. Provide this information when contacting support

### License Verification
To verify the software license and copyright:
1. Open the About dialog
2. Check the copyright notice
3. Verify the company information

### Product Information
For users new to ImgArchive:
1. Read the product description
2. Understand the core purpose of the software
3. Verify you have the correct product

## Technical Details

### Implementation
- **Framework**: .NET 9 Windows Forms
- **UI Pattern**: Standard Windows About box pattern
- **Data Binding**: Uses Reflection to read assembly attributes
- **Image Resources**: Embedded logo image resource

### Code Structure
The application consists of two main files:
- `Program.cs`: Application entry point
- `AboutForm.cs`: Form implementation with assembly attribute accessors

## Integration with ImgArchive Suite

The About dialog is used throughout the ImgArchive application suite:

- **iawizard**: Setup wizard about information
- **iaadmingui**: Administration interface
- **iatray**: System tray application
- **Other GUI tools**: Various ImgArchive utilities

## Customization

While the About dialog is typically used as-is, developers can customize:
- Assembly attributes in project properties
- Description text in AssemblyDescription attribute
- Logo image in resources
- Copyright years and company name

## Related Applications

The iaabout application is part of the larger ImgArchive suite:
- **iawizard**: Setup and configuration wizard
- **iaget**: Image retrieval tool
- **iaimport**: Image import utility
- **iaadmingui**: Administrative interface
- **iatray**: System tray monitoring application

## Support Information

For additional information about ImgArchive:
- **Company**: IDK Solutions Ltd
- **Product**: Image Archive
- **Purpose**: Safe environment to store and manage editing of images

## Version History

The version displayed in the About dialog reflects the current build of the ImgArchive software. Each release includes:
- Major version changes for significant updates
- Minor version changes for feature additions
- Build numbers for patches and fixes
- Revision numbers for minor corrections

## Keyboard Shortcuts

- **Enter**: Accepts and closes the dialog (same as clicking OK)
- **Escape**: Cancels and closes the dialog (same as clicking OK)
- **Alt+F4**: Closes the window

## Accessibility

The About dialog follows standard Windows accessibility guidelines:
- Keyboard navigation support
- Standard tab order
- Clear visual hierarchy
- Readable font sizes
- High contrast compatible

---

**Note**: This is a simple utility application designed to display product information. For functional operations with ImgArchive, please use the appropriate tools (iaget, iaimport, iaadmingui, etc.).