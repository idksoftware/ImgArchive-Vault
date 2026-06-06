# iachkout - Image Archive Checkout

## Overview

**iachkout** is a Windows GUI application that enables users to check out images from the Image Archive workspace. It provides a visual interface for selecting and retrieving archived images, supporting both single and multiple file operations.

## Purpose

The Image Archive Checkout tool allows you to:
- Browse and select images from the Image Archive workspace
- Check out single images for viewing or editing
- Check out multiple images in batch operations
- View file metadata and properties before checkout
- Track checkout status and timestamps

## How It Works

iachkout integrates with Windows Explorer through shell extensions, allowing you to:
1. Right-click on archived images in Windows Explorer
2. Select checkout options from the context menu
3. View and manage checkout operations through the GUI

## Usage

### Command Line Syntax

### Options

| Option | Description |
|--------|-------------|
| (no arguments) | Opens the no-file selection dialog |
| `<filepath>` | Checks out a single file specified by the path |
| `-f <listfile>` | Checks out multiple files from a list file |

### Single File Checkout

To check out a single image:



The application will display:
- File name
- File type/extension
- File size
- Date modified
- Folder location

### Multiple File Checkout

To check out multiple files, create a text file containing the list of files and use:


The list file should contain one file path per line.

### Interactive Mode

Running iachkout without arguments opens an interactive dialog where you can:
- Browse for files to checkout
- Select files from the archive
- View checkout options

## User Interface

### Single File Checkout Form

When checking out a single file, the form displays:
- **Image Name**: The filename of the archived image
- **Type**: File extension
- **Size**: File size in bytes
- **Date Modified**: Last modification timestamp
- **Folder**: Parent directory path
- **Properties Button**: View additional metadata
- **Cancel Button**: Cancel the checkout operation

### Multiple File Checkout Form

For batch operations, the form provides:
- **List View**: Shows all files to be checked out
- **File Information**: Name, size, date, and checkout status
- **Progress Tracking**: Visual indication of checkout progress
- **Batch Controls**: Select all, deselect, or filter files

## Integration with Image Archive

iachkout works as part of the Image Archive ecosystem:

- **Registry Settings**: Reads installation paths from Windows Registry
- **ExePath**: Location of Image Archive command-line tools
- **InstallPath**: Image Archive installation directory
- **TempPath**: Temporary working directory for checkout operations

## Requirements

- Windows operating system
- .NET 9 runtime
- Image Archive command-line tools installed
- Valid Image Archive workspace configuration
- Proper registry settings configured via the Image Archive installation

## Error Handling

The application handles the following error conditions:

| Error | Description | Action |
|-------|-------------|--------|
| **Path Not Found** | Specified file path does not exist | Dialog prompts user to verify path |
| **Invalid Arguments** | Incorrect command-line parameters | Error message displays usage information |
| **Missing Tools** | Image Archive tools not found | Installation verification required |
| **Empty Selection** | No files selected for checkout | User prompted to select files |

## Tips and Best Practices

1. **Single vs. Batch**: Use single file checkout for quick access; use batch mode for multiple files
2. **List Files**: When creating list files for batch checkout, ensure paths are absolute
3. **Temp Path**: The application uses the system temp path configured in registry settings
4. **Shell Integration**: Configure Windows Explorer context menu for quick access
5. **Close Forms**: The application manages form lifecycle automatically

## Related Tools

iachkout works with other Image Archive components:

- **iachkin**: Check images into the archive
- **iaprop**: View and edit image properties
- **iaexport**: Export images from the archive
- **iaadmin**: Configure archive settings

## Troubleshooting

### Application Won't Start

1. Verify .NET 9 runtime is installed
2. Check registry settings are configured
3. Ensure Image Archive tools are installed at expected paths

### Files Not Found

1. Verify file paths in list file are correct
2. Check archive workspace is accessible
3. Ensure files exist in the archive

### Checkout Fails

1. Verify write permissions to destination folder
2. Check available disk space
3. Ensure files are not locked by another process

## Technical Details

### Architecture

- **Platform**: Windows Forms (.NET 9)
- **Entry Point**: `CheckoutShellApp` class
- **Forms**: 
  - `CheckOutSingleForm` - Single file operations
  - `CheckOutMultiForm` - Multiple file operations
  - `NoFileForm` - Interactive file selection

### File Processing

The application processes files through a three-stage argument handling:
1. **NoArg()**: No arguments provided - opens selection dialog
2. **OneArg()**: Single file path - opens single file form
3. **TwoArg()**: List file with `-f` flag - opens multi-file form

### Dependencies

- **iabase**: Base library for archive operations
- **iaforms**: Shared Windows Forms components
- **System.Windows.Forms**: UI framework
- **System.IO**: File system operations

## Version Information

Built for .NET 9 with Visual Studio 2026.

## Support

For issues or questions about iachkout:
1. Verify your Image Archive installation
2. Check the Image Archive documentation
3. Review registry settings using **iaadmin**
4. Consult the Image Archive user guide


*Part of the Image Archive GUI application suite*
