# iawizard - Image Archive Setup Wizard

## Overview
The **iawizard** application is a Windows Forms-based setup wizard that helps you configure the ImgArchive system. This wizard guides you through the initial setup process, including configuring vault locations, backup paths, and user space settings.

## Purpose
This application provides a step-by-step graphical interface for setting up and configuring the ImgArchive system, eliminating the need to manually edit configuration files or use command-line tools.

## System Requirements
- ImgArchive tools must be installed (specifically `iaadmin.exe`)
- The wizard reads installation paths from Windows Registry settings
- .NET 9 runtime

## Features
- **Guided Setup Process**: Step-by-step wizard interface for easy configuration
- **Master Vault Configuration**: Set up the primary archive storage location
- **Backup Configuration**: Configure up to two backup locations for both master and derivative vaults
- **User Space Setup**: Configure workspace, WWW, and pictures directories
- **Auto-Checkout Options**: Enable automatic checkout from the archive
- **Configuration Summary**: Review all settings before applying changes
- **Registry Integration**: Automatically reads and updates system registry settings

## Wizard Pages

### 1. Welcome Page
The initial page introduces the ImgArchive setup wizard and explains the configuration process.

### 2. Master Vault Configuration
Configure the primary storage location for your master image archive.

#### Settings:
- **Master Vault path**: The primary location where original images are stored
- **Backup 1 path**: Optional first backup location for the master vault
- **Backup 2 path**: Optional second backup location for the master vault
- **Enable Backup 1**: Checkbox to activate the first backup location
- **Enable Backup 2**: Checkbox to activate the second backup location

#### How to Configure:
1. Click **Browse** next to the Master Vault path field
2. Select the folder where you want to store your master archive
3. (Optional) Click **Browse** for Backup 1 and select a backup location
4. Check **Enable Backup 1** to activate the first backup
5. (Optional) Repeat for Backup 2 if you want a second backup location

### 3. Derivative Vault Configuration
Configure the storage location for derivative images (processed versions, thumbnails, etc.).

#### Settings:
- **Derivative Vault path**: Location for derivative images
- **Backup 1 path**: Optional first backup location for the derivative vault
- **Backup 2 path**: Optional second backup location for the derivative vault
- **Enable Backup 1**: Checkbox to activate the first backup location
- **Enable Backup 2**: Checkbox to activate the second backup location

#### How to Configure:
1. Click **Browse** next to the Derivative Vault path field
2. Select the folder for derivative images
3. (Optional) Configure backup locations similar to the master vault
4. Check the appropriate **Enable Backup** checkboxes

### 4. User Space Configuration
Set up the user workspace and output directories.

#### Settings:
- **User space location**: Base directory for user operations
- **Workspace On**: Enable the workspace directory for checked-out images
- **WWW On**: Enable web output directory
- **Pictures On**: Enable pictures output directory
- **Enable Auto checkout**: Automatically checkout images when accessed

#### How to Configure:
1. Click **Browse** to select the user space base directory
2. Check **Workspace On** to enable the workspace directory
3. Check **WWW On** if you want a web-accessible output folder
4. Check **Pictures On** to enable the pictures directory
5. Check **Enable Auto checkout** if you want automatic checkout functionality

### 5. Summary Page
Review all your configuration settings before applying them.

#### Features:
- **Master Vault Summary**: Displays master vault path and backup settings
- **Derivative Vault Summary**: Shows derivative vault configuration
- **User Space Summary**: Lists all user space options and their status
- **Show Backups**: Buttons to view detailed backup configurations

#### Actions:
- **Back**: Return to previous pages to modify settings
- **Apply**: Click to save and apply all configuration changes
- **Cancel**: Exit without saving changes

### 6. Completion Page
Confirms that the setup wizard has completed successfully.

## How to Use

### Initial Setup Process

1. **Launch the Wizard**
   - Run `iawizard.exe` from the ImgArchive installation directory
   - The wizard will verify that ImgArchive tools are installed

2. **Configure Master Vault**
   - Navigate through the welcome page
   - Set up your master vault location
   - Configure backup locations (recommended for data safety)
   - Click **Next** to continue

3. **Configure Derivative Vault**
   - Set up the derivative vault path
   - Configure backup locations if desired
   - Click **Next** to continue

4. **Configure User Space**
   - Select your user space base directory
   - Enable the directories you need (Workspace, WWW, Pictures)
   - Enable auto-checkout if desired
   - Click **Next** to continue

5. **Review and Apply**
   - Review all settings on the summary page
   - Click **Apply** to save your configuration
   - Wait for the configuration to be applied
   - Click **Finish** to complete the wizard

### Best Practices

#### Vault Configuration
- **Use separate physical drives** for master vault and backups when possible
- **Configure at least one backup** for both master and derivative vaults
- **Ensure sufficient disk space** at all vault locations
- **Use network locations** for backups to protect against hardware failure

#### User Space Configuration
- **Workspace**: Essential for editing and working with images
- **Pictures**: Useful for exporting final images
- **WWW**: Enable if you plan to publish images to a web server
- **Auto-checkout**: Convenient but may impact performance with large archives

## Troubleshooting

### Common Issues

#### "Cannot find ImgArchive tools" Error
**Problem**: The wizard cannot locate `iaadmin.exe`

**Solutions**:
- Verify ImgArchive is properly installed
- Check the registry settings for the installation path
- Reinstall ImgArchive if necessary

#### Cannot Browse for Folders
**Problem**: Browse buttons don't respond

**Solutions**:
- Ensure you have file system permissions
- Check if any folder browser dialogs are already open
- Run the wizard as administrator if needed

#### Configuration Not Saved
**Problem**: Settings don't persist after clicking Apply

**Solutions**:
- Ensure you have write permissions to the configuration location
- Check that the working path is accessible
- Review the application logs for specific errors

## Configuration Files
The wizard modifies ImgArchive configuration files stored in:
- Installation path (from registry settings)
- Working path (typically in the user's temp directory)

## Command-Line Alternative
For automated or scripted setups, consider using the `iaadmin` command-line tool directly instead of the wizard.

## Related Applications
- **iaadmin**: Command-line administration tool
- **iaget**: Image retrieval application
- **iaimport**: Image import tool

## Support
For additional help with ImgArchive configuration, refer to the main ImgArchive documentation or contact your system administrator.

## Version Information
This wizard is part of the ImgArchive GUI suite targeting .NET 9.