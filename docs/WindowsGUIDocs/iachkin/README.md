# iachkin Application

# iachkin - Image Archive Check-In User Guide

## Overview

**iachkin** is a Windows Forms application that allows users to check in images and files into the Image Archive system. It provides a graphical interface for managing file check-ins with support for single files, multiple files, or batch operations.

## System Requirements

- Windows Operating System
- .NET 9
- Image Archive tools installed (iaadmin.exe, iavault.exe)
- Valid Image Archive configuration (registry settings)

## Launch Methods

The application can be launched in three different modes:

### 1. No Arguments (Interactive Mode)

Opens the multi-file check-in form where `<listfile>` contains a list of files to check in.

## Features

### Single File Mode

When checking in a single file, the application displays:

- **File Name**: The name of the image/file
- **File Type**: The file extension
- **Size**: File size in bytes
- **Modified Date**: Last modification timestamp (format: HH:mm MM/dd/yyyy)
- **Folder**: Full directory path of the file

### Multi-File Mode

When checking in multiple files:

- **List View**: Displays all files to be checked in
- **Visual Indicators**: Icons show check-in status
  - Icon 0: Normal file ready for check-in
  - Icon 2: File has been modified since last check-in
- **Date Tracking**: Compares file modification times with previous check-in dates
- **Batch Processing**: Process multiple files in a single operation

### Interactive Mode (No File)

When launched without arguments:

- **File Selection**: Browse and select files to check in
- **Manual Input**: Specify files or folders for check-in
- **Flexible Operations**: Configure check-in options before processing

## Configuration

The application reads configuration from Windows Registry:

- **Install Path**: Main installation directory
- **Executable Path** (`iaexePath`): Location of Image Archive command-line tools
- **Temp Path**: Temporary file storage location

## Usage Examples

### Example 1: Check in a Single Photo

### Example 2: Batch Check-In from List

Where `checkin-list.txt` contains:

### Example 3: Interactive Selection

Then use the UI to browse and select files.

## File List Format

When using the `-f` parameter, the list file should contain:
- One file path per line
- Full or relative paths supported
- Files can be in any supported image/media format

## Error Handling

The application provides error messages for:
- **Invalid Path**: File or directory does not exist
- **Missing Tools**: Required Image Archive executables not found
- **Invalid Arguments**: Incorrect command-line parameters
- **Registry Issues**: Configuration not properly set up

## Integration with Image Archive

iachkin integrates with the larger Image Archive system:
- Uses shared configuration through `RegSetting` class
- Coordinates with command-line tools (`iavault.exe`, `iaadmin.exe`)
- Maintains check-in history and timestamps
- Works alongside other IA tools:
  - `iachkout`: Check-out files
  - `iaadmingui`: Archive administration
  - `iaprop`: File properties
  - `iaexport`: Export operations

## Tips

1. **Check File Status**: The icon indicators help identify which files have been modified
2. **Batch Operations**: Use list files for regular, recurring check-ins
3. **Temporary Files**: If using `-f` with just a filename, the app looks in the configured temp directory
4. **Multiple Sessions**: The app supports multiple windows for concurrent operations

## Troubleshooting

### "Path Not Found" Error
- Verify the file path exists
- Check for typos in the file path
- Ensure you have read permissions for the file/folder

### "Fatal - Cannot find ImgArchive tools" Error
- Verify Image Archive is properly installed
- Check registry settings for correct executable paths
- Reinstall Image Archive if necessary

### Files Not Showing in Multi-File Mode
- Verify the list file exists in the temp directory
- Check list file format (one path per line)
- Ensure paths in the list file are valid

## Additional Resources

For more information about the Image Archive system:
- **Administration**: Use `iaadmingui` for system configuration
- **Properties**: Use `iaprop` to view/edit file metadata
- **Check-Out**: Use `iachkout` to check files out of the archive
- **Import**: Use `iaimport` for bulk import operations

## Support

For issues or questions:
- Check the Image Archive documentation
- Review registry settings using the admin tool
- Ensure all Image Archive components are properly installed

---

**Version**: .NET 9  
**Project**: ImgArchiveGUI  
**Repository**: https://github.com/idksoftware/ImgArchiveGUI