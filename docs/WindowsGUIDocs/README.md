# ImgArchive Windows graphical user interface
# ImgArchive GUI - User Guide

## Overview

ImgArchive GUI is a comprehensive Windows-based image archiving solution built on .NET 9. The solution provides a suite of applications for managing, importing, organizing, and archiving image files with version control-like capabilities.

## System Requirements

- **Operating System**: Windows 8.0 or higher
- **Framework**: .NET 9.0
- **Additional Dependencies**: ImgArchive command-line tools (iavault.exe, iaadmin.exe)

## Solution Architecture

The solution consists of several applications and supporting libraries:

### Core Applications

#### 1. **iawizard** - Setup Wizard
The initial setup and configuration wizard for ImgArchive.

**Purpose**: Guides new users through the initial configuration of the ImgArchive system.

[iawizard application](./iawizard/README.md)

**Usage**:
- Run `iawizard.exe` to launch the setup wizard
- Follow the on-screen instructions to configure paths and settings
- Requires `iaadmin.exe` to be present in the executable path

---

#### 2. **iatray** - System Tray Application
The main system tray application for monitoring and quick access.

**Purpose**: Provides background monitoring and quick access to ImgArchive features from the system tray.

[iatray application](./iatray/README.md)

**Features**:

- System tray icon for quick access
- Cloud backup monitoring
- Workspace and picture path management
- Quick launch for other ImgArchive tools

**Usage**:
- Run `iatray.exe` to start the system tray application
- Right-click the tray icon for options
- Access backup paths and device settings

---

#### 3. **iaimport** - Image Import Tool
Import images into the archive from various sources.

**Purpose**: Manages the import queue for adding new images to the archive.

**Features**:
- Queue-based import system
- Single or batch file import
- Folder import support
- Validates ImgArchive tools installation

**Usage**:
- Run `iaimport.exe` to open the import queue form
- Run with file/folder arguments to import directly:
These applications provide a graphical interface between ImgArchive command line interface and the Windows graphical interface.
- Requires `iavault.exe` in the configured executable path

---

#### 4. **iachkin** - Check-In Application
Check images into the archive (similar to versioncontrol commit).

**Purpose**: Checks in modified or new images to the archive with version tracking.

**Features**:
- Single or multiple file check-in
- Version tracking
- Comment support
- Shell integration

**Usage**:
- Run `iachkin.exe <file-path>` to check in files
- Can be integrated with Windows Explorercontext menu
- Supports batch operations

---

#### 5. **iachkout** - Check-Out Application
Check out images from the archive for editing.

**Purpose**: Retrieves images from the archive for modification, maintaining version control.

**Features**:
- Single or multiple file check-out
- Version selection support
- Target path specification
- Force checkout option

**Usage**:
- Run `iachkout.exe <file-path>` to check out files
- Shell integration available
- Specify version with command-line arguments

---

#### 6. **iaprop** - Properties Viewer
View and edit image properties and metadata.

**Purpose**: Displays and modifies image properties, EXIF data, and archive metadata.

**Usage**:
- Run `iaprop.exe <file-path>` to view/edit properties
- Can be called from Windows Explorer context menu
- Supports batch property viewing

---

#### 7. **iaexport** - Export Tool
Export images from the archive.

**Purpose**: Exports archived images to external locations or formats.

**Features**:
- Single or batch export
- Target path selection
- Export queuemanagement

**Usage**:
- Run `iaexport.exe` to open export form
- Run with file arguments: `iaexport.exe <file-path>`
- Configure export settings in the UI

---

#### 8. **iaadmingui** - Administration Tool
Administrative interface for archive management.

**Purpose**: Provides administrative functionsfor managing the entire archive system.

**Features**:
- Archive configuration
- System settings management
- Maintenance operations
- Requires `iaadmin.exe` backend

**Usage**:
- Run `iaadmingui.exe` to open admin interface
- Configure paths, users, and system settings
- Perform maintenance tasks

---

#### 9. **iaget** - Get/Retrieve Tool
Retrieve files from the archive.

**Purpose**: Simple interface for retrieving files from the archive without full checkout.

**Usage**:
- Run `iaget.exe` to open the retrieval interface
- Browse and select files to retrieve
- Supports workspace and cloud backup paths

---

#### 10. **iascanner** - Drive Scanner
Scan attached drives for importable images.

**Purpose**: Automatically detects and scans attached storage devices for images to import.

**Features**:
- Attached drive detection
- Automatic scanning for image files
- Import queue integration

**Usage**:
- Run `iascanner.exe` to open the attached drivesform
- Select drives to scan
- Queue found images for import

---

#### 11. **iadrvscan** - Advanced Drive Scan
Advanced drive scanning with shell integration.

**Purpose**: Enhanced drive scanning capabilities with command-line support.

**Usage**:
- Run `iadrvscan.exe` with file or folder arguments
- Integrates with shell extensions
- Supports automated scanning workflows

---

### Supporting Libraries

#### **iabase** - Base Library
Core functionality and shared utilities used across all applications.

**Contains**:
- Registry settings management (RegSetting)
- Command-line launching utilities
- Common base classes

---

#### **iaforms** - Forms Library
Shared Windows Forms components and dialogs.

**Contains**:
- CheckinShellApp, CheckoutShellApp, ExportShellApp
- PropShellApp, DrvScanShellApp
- ImportQueueForm, PropertiesForm
- Progress forms and dialogs
- Journal viewer
- EXIF data containers

---

#### **iawizardlib** - Wizard Library
Wizard framework components.

**Contains**:
- WizardForm base class
- Setupwizard pages
- Admin launch utilities

---

#### **iaabout** - About Dialog
Standard about dialog component showing version and copyright information.

---

#### **wizard** - Generic Wizard Framework
Reusable wizard framework for creating multi-step processes.

---

## Configuration

All applications read configuration fromWindows Registry settings managed through the `RegSetting` class:

- **InstallPath**: ImgArchive installation directory
- **ExePath/IaexePath**: Path to command-line tools
- **UserPath**: User-specific data path
- **TempPath**: Temporary file storage
- **WorkspacePath**: Working directory for archive operations
- **PicturePath**: Default picture library path
- **CloudBackupPath**: Cloud backup location
- **CloudBackupDevices**: Configured backup devices

## Getting Started

1. **InitialSetup**:
 - Run `iawizard.exe` to configure the system
 - Set installation paths and preferences
 - Ensure command-line tools are installed

2. **Start System Monitoring**:
 - Run `iatray.exe` for background monitoring
 - Configure cloud backup if needed

3. **Import Images**:
 - Use`iaimport.exe` to add images to the archive
 - Or use `iascanner.exe` to scan attached drives

4. **Daily Operations**:
 - Right-click images in Explorer to check in/out
 - Use `iaprop.exe` to view/edit metadata
 - Use `iaexport.exe` when you need to export images

5. **Administration**:
 - Use `iaadmingui.exe` for system configuration
 - Manage users, settings, and maintenance

## Shell Integration

Several applications support Windows Explorer shell integration:
- Right-click context menu for check-in/check-out
- Property sheet extensions
- Drag-and-drop support

## BuildInformation

- **Target Framework**: net9.0-windows8.0
- **Build Configuration**: Debug/Release
- **Output Path**: `..\bin\Debug\` or `..\bin\Release\`

## Support Files

The solution includes various icon and bitmapresources:
- Status indicators (success, warning, error, fatal)
- Check-in/check-out status icons
- System tray icons
- ImgArchive branding assets

## Troubleshooting

### "Cannot find ImgArchive command line tool" Error
- Ensure `iavault.exe` and `iaadmin.exe` areinstalled
- Check registry settings for correct ExePath/IaexePath
- Run `iawizard.exe` to reconfigure paths

### Import/Export Not Working
- Verify workspace and install paths in registry
- Ensure sufficient disk space
- Check file permissions

### Shell Integration Missing
- Re-run installer or setup wizard
- Check Windows Explorer extensions settings
- Restart Windows Explorer

## License

Copyright © IDK Software. All rights reserved.

## Version

Solution Version: 2026 (targeting .NET 9.0)

---

For more information and updates, visit: https://github.com/idksoftware/ImgArchiveGUI

[iaabout application](./iaabout/README.md)

[iaadmin application](./iaadmin/README.md)

[iachkin application](./iachkin/README.md)

[iachkout application](./iachkout/README.md)

[iadrvscan application](./iadrvscan/README.md)

[iaexport application](./iaexport/README.md)

[iaget application](./iaget/README.md)

[iaimport application](./iaimport/README.md)

[iaprop application](./iaprop/README.md)

[iascanner application](./iascanner/README.md)



