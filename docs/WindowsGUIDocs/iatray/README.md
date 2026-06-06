# iatray - ImgArchive System Tray Application

## Overview
The **iatray** application is a Windows system tray utility that provides background monitoring and management for the ImgArchive cloud backup system. It runs silently in the system tray, automatically detecting and processing cloud backup jobs while providing quick access to common ImgArchive functions.

## Purpose
This application serves as a background service manager and quick-access hub for the ImgArchive system. It continuously monitors for pending backup jobs and automatically initiates cloud backup operations when work is detected, all while remaining unobtrusive in the Windows system tray.

## Features
- **System Tray Integration**: Runs minimized in the system tray for always-on availability
- **Automatic Backup Detection**: Monitors cloud backup folders for pending jobs
- **Background Processing**: Automatically launches cloud backup operations when needed
- **Visual Status Indicators**: Animated icon shows backup activity status
- **Quick Access Menu**: Context menu provides instant access to key functions
- **File System Monitoring**: Watches for new backup jobs using FileSystemWatcher
- **Balloon Notifications**: Displays toast notifications for backup events
- **Path Management**: Quick access to workspace and picture directories

## System Requirements
- **.NET 9.0** or later
- **Windows 8.0** or later
- **iarbk.exe** (ImgArchive backup executable) must be configured
- Properly configured registry settings for ImgArchive

## Installation and Setup

### Prerequisites
Before running iatray, ensure the following are configured:
1. ImgArchive system is properly installed
2. Registry settings are configured with:
   - Install Path
   - Executable Path
   - Cloud Backup Path
   - Cloud Backup Devices
   - Workspace Path
   - Picture Path

### Starting the Application
1. Launch **iatray.exe**
2. The application minimizes to the system tray immediately
3. Look for the ImgArchive icon in the Windows system tray (notification area)

## User Interface

### System Tray Icon

The icon in the system tray indicates the current status:

- **Static ImgArchive Icon**: Idle state, no backup operations running
- **Animated Green/Standard Icon**: Backup operation in progress (toggles every 500ms)

### Context Menu

Right-click the system tray icon to access the following options:

#### **Workspace**
- Opens Windows Explorer to your configured workspace directory
- Quick access to your working files and temporary image storage

#### **Picture**
- Opens Windows Explorer to your configured picture directory
- Direct access to your organized image archive

---

#### **Properties**
- Opens the Cloud Backup Properties dialog
- Configure cloud backup devices (supports up to 3 devices)
- Device types can include:
  - RClone
  - None (disabled slot)
- Enable/disable individual backup device slots

#### **Status**
- Opens the Cloud Backup Status window
- Shows real-time backup operation status
- Displays current backup progress and summary information
- Visual indicator shows:
  - **Running** (animated green icon): Backup in progress
  - **Stopped** (red icon): No backup activity

#### **About**
- Displays application version and copyright information
- Shows ImgArchive system details

---

#### **Exit**
- Terminates the iatray application
- Stops monitoring for cloud backup jobs
- **Note**: Any running backup operations will be interrupted

## How It Works

### Automatic Backup Detection

The application monitors three pending job directories:

Each directory corresponds to a configured cloud backup device slot (0, 1, or 2).

### Monitoring Process

1. **Startup Scan**: On launch, checks all three pending directories for `.dat` files
2. **File System Watching**: Continuously monitors for:
   - File creation
   - File changes
   - File deletion
   - File renaming
3. **Automatic Trigger**: When `.dat` files are detected, automatically starts backup

### Backup Execution

When pending work is detected:

1. **Notification**: Displays balloon tip "Cloud backup starting"
2. **Process Launch**: Executes `iarbk.exe run` command
3. **Status Monitoring**: Tracks backup progress and status
4. **Icon Animation**: Toggles icon to show activity
5. **Completion**: Shows "Cloud backup completed" notification
6. **Icon Reset**: Returns to static icon state

### Background Worker

The application uses a background worker thread to:
- Execute the `iarbk.exe` process asynchronously
- Monitor stdout output from the backup process
- Parse status and summary information
- Report progress without blocking the UI
- Handle completion and error states

## Cloud Backup Properties

### Device Configuration

The Properties window allows configuration of up to 3 backup devices:

- **Device 0**: Primary cloud backup device
- **Device 1**: Secondary cloud backup device
- **Device 2**: Tertiary cloud backup device

Each device can be set to:
- **RClone**: Use RClone for cloud synchronization
- **None**: Disable this device slot

### RClone Configuration

For devices set to RClone, click the **Properties** button to configure:
- Remote destination
- Synchronization settings
- Credentials and authentication
- Transfer options

## Cloud Backup Status Window

### Real-Time Monitoring

The Status window provides live updates during backup operations:

#### Display Elements:
- **Mode Indicator**: Shows "Running" or "Stopped"
- **Visual Icon**: Animated (running) or static (stopped)
- **Status Line**: Current operation being performed
- **Summary Line**: Progress summary and statistics

#### Status Information:
- Updates every timer tick (approximately 500ms)
- Parses output from `iarbk.exe`:
  - `[   SUMMARY ]`: Overall progress information
  - `[    STATUS ]`: Current operation details
  - `[  WARNING  ]`: Any warnings encountered

### Monitoring States

**Running State:**
- Icon animates between white and green
- Status and summary fields update continuously
- Mode shows "Running"

**Stopped State:**
- Static red icon displayed
- Status and summary fields cleared
- Mode shows "Stopped"

## Notifications

### Balloon Tips

The application displays Windows balloon tip notifications for:

1. **Backup Starting**
   - Title: "ImgArchive Cloud backup"
   - Message: "Cloud backup starting"
   - Icon: Info

2. **Backup Completed**
   - Title: "ImgArchive Cloud backup"
   - Message: "Cloud backup completed"
   - Icon: Info

### Duration
Notifications display for 500 milliseconds by default.

## Technical Details

### Project Information
- **Target Framework**: .NET 9.0 (Windows)
- **Output Type**: Windows Forms Application
- **Platform**: Windows 8.0 and later
- **Icon**: ImgArchive.ico

### Dependencies
- **iabase**: Core library for ImgArchive operations
- **iaforms**: Shared form components

### Process Management

The application manages the `iarbk.exe` process:
- Launches using `LaunchCmdStdout` wrapper
- Monitors process output via stdout
- Handles process completion events
- Automatically terminates any existing `iavault` processes on startup

### File System Monitoring

Uses .NET `FileSystemWatcher` to monitor:
- **NotifyFilters**: Attributes, CreationTime, DirectoryName, FileName, LastAccess, LastWrite, Security, Size
- **Filter**: `*.dat` files only
- **IncludeSubdirectories**: Yes
- **Events**: Changed, Created, Deleted, Renamed, Error

### Registry Settings

Required registry values (read via `RegSetting` class):
- `InstallPath`: ImgArchive installation directory
- `ExePath`: Location of ImgArchive executables
- `CloudBackupPath`: Base path for cloud backup operations
- `CloudBackupDevices`: Semicolon-separated device list (e.g., "RClone;None;None")
- `WorkspacePath`: Workspace directory location
- `PicturePath`: Picture archive directory location

## Common Usage Scenarios

### Scenario 1: Monitoring Automatic Backups
1. Start **iatray** on Windows login (add to Startup folder)
2. Application runs silently in the background
3. When backup jobs are created, automatic processing begins
4. Check system tray icon for activity status
5. View detailed status by right-clicking → **Status**

### Scenario 2: Manual Status Check
1. Right-click the tray icon
2. Select **Status**
3. Review current backup state
4. Close status window when done

### Scenario 3: Configuring Backup Devices
1. Right-click the tray icon
2. Select **Properties**
3. Review the three device slots
4. Click **Properties** button for enabled devices
5. Configure RClone settings as needed
6. Close all dialogs

### Scenario 4: Quick File Access
1. Right-click the tray icon
2. Select **Workspace** or **Picture**
3. Windows Explorer opens to the selected location
4. Browse or manage files as needed

## Troubleshooting

### Application Doesn't Appear in System Tray
- Check Task Manager to verify the process is running
- Verify Windows system tray settings allow the icon to display
- Check Windows notification area settings

### Backups Don't Start Automatically
- Verify `CloudBackupPath` registry setting is correct
- Check that pending directories exist and are accessible
- Ensure `.dat` files are being created in pending folders
- Review file permissions on monitored directories

### Can't Open Workspace or Picture Folders
- Verify registry settings for `WorkspacePath` and `PicturePath`
- Check that directories exist and are accessible
- Ensure current user has permissions to access these paths

### Icon Stuck in Animated State
- Check Cloud Backup Status window for details
- Verify `iarbk.exe` process is running correctly
- Check for errors in backup process output
- Restart iatray if necessary

### "iarbk.exe" Not Found Error
- Verify `ExePath` registry setting points to correct directory
- Ensure `iarbk.exe` exists in the specified location
- Check file permissions on the executable

## Best Practices

### For Reliability:
- Add iatray to Windows Startup folder for automatic launch
- Keep the application running continuously
- Monitor the Status window periodically
- Don't manually terminate `iarbk.exe` while iatray is running

### For Performance:
- Ensure adequate disk space for cloud backup operations
- Monitor system resources during large backup operations
- Configure only the device slots you actually use

### For Maintenance:
- Periodically review backup status
- Check Properties configuration after system changes
- Keep ImgArchive executables up to date
- Verify registry settings after reinstallation

## Exit Behavior

When you select **Exit** from the context menu:
1. Attempts to terminate any running `iavault` processes
2. Stops file system monitoring
3. Closes the tray icon
4. Terminates the application

**Warning**: Exiting iatray while a backup is in progress will interrupt the operation.

## Integration with ImgArchive Workflow

**iatray** serves as the background automation component:

1. **iascanner** → Discovers images on attached drives
2. **iaimport** → Imports images into the archive
3. **iatray** → Automatically backs up to cloud storage (background)
4. **iaget** → Retrieves images from the archive

The tray application ensures continuous cloud backup monitoring without user intervention.

## Version Information
This documentation is for iatray targeting **.NET 9.0**.

## Related Applications
- **iarbk**: Cloud backup command-line tool (executed by iatray)
- **iaimport**: Image import tool
- **iascanner**: Drive and image scanner
- **iaget**: Image retrieval tool

---

For more information about the ImgArchive system, visit the project repository:
https://github.com/idksoftware/ImgArchiveGUI