# iaimport - Image Archive Import Application

## Overview
The **iaimport** application is a Windows Forms-based GUI tool for importing images into the ImgArchive system. It provides a queue-based workflow that allows users to add multiple folders containing images and import them into the archive with customizable metadata and properties.

## Purpose
This application provides a graphical interface for the `import` command in the ImgArchive command-line interface, making it easier to batch import images from multiple folders without using command-line arguments.

## Features
- **Queue-Based Import**: Add multiple folders to an import queue and process them sequentially
- **Progress Tracking**: Real-time progress monitoring with detailed stage information
- **Metadata Management**: Add and customize metadata properties for imported images
- **Subfolder Support**: Option to include subfolders when importing
- **Persistent Queue**: Import queue is saved and can be resumed later
- **Warning/Error Reporting**: View detailed warnings and errors during the import process
- **Journal Access**: Review import history and logs
- **Attached Drives**: Monitor and import from attached storage devices

## User Interface

### Main Window Components

#### 1. Import Queue List
Displays all folders queued for import with the following information:
- **#**: Queue position number
- **Path**: Folder path to be imported
- **Status**: Current, Complete, or Pending
- **Metadata**: Indicates if custom metadata has been added

#### 2. Action Buttons

##### Add Folders
- Click **Add folders** to browse and select a folder containing images to import
- The folder will be added to the import queue
- Duplicate folders are automatically prevented

##### Start Import
- Click **Start** to begin processing the import queue
- The application will process folders in sequential order
- Progress information is displayed in real-time

##### Stop Import
- Click **Stop** to halt the current import process
- The queue position is saved and can be resumed later

##### Metadata
- Click **Metadata** to add or edit metadata properties for selected queue items
- Apply bulk metadata to all images in the selected folder

##### Journal
- Click **Journal** to view the import history and logs
- Review past import operations and their results

##### Attached Drives
- Click **Attached Drives** to view and import from connected storage devices
- Useful for importing from cameras, SD cards, or external drives

##### Done
- Click **Done** to close the application
- The import queue is automatically saved

#### 3. Status Display
During import operations, the following information is shown:
- **Stage**: Current processing stage (Reading folders, Processing Images, Archiving images, etc.)
- **Files/Folders**: Count of items being processed
- **Output**: Real-time status messages
- **Warnings**: Number of warnings encountered (click to view details)

## How to Use

### Step 1: Add Folders to Import Queue
1. Click the **Add folders** button
2. Browse to the folder containing images you want to import
3. Select the folder and click **OK**
4. The folder appears in the import queue with "Pending" status
5. Repeat to add multiple folders

### Step 2: Add Metadata (Optional)
1. Select one or more folders in the import queue
2. Click the **Metadata** button
3. In the Import Metadata dialog, you can set:
   - **Basic Properties**: Title, Subject, Label, Description
   - **Ratings**: Rating (1-5 stars), Rating Percent (0-100)
   - **Author Info**: Author, Creator, Job Title, Copyright
   - **Camera Details**: Make, Model
   - **Location**: GPS coordinates (Latitude, Longitude), Location, Scene
   - **IPTC Fields**: Headline, Category, Source, Instructions
   - **Usage Rights**: Source URL, Usage Rights, Copyright URL
   - **Contact Info**: Address, City, State, Postal Code, Country, Phone, Email, Website
   - **Tags**: Hashtags for categorization (e.g., #vacation, #family)
   - **Keywords**: Keywords for search and indexing
4. Click **OK** to save the metadata properties
5. The queue list will show "Added" in the Metadata column

### Step 3: Start Import Process
1. Click the **Start** button
2. The application will begin processing folders in order
3. Watch the progress display for:
   - **Stage 1**: Reading folders and discovering images
   - **Stage 2**: Processing images (extracting metadata, creating thumbnails)
   - **Stage 3**: Archiving images to the repository
   - **Stage 4**: Validating imported images
   - **Stage 5**: Processing cloud backup (if configured)
4. The current folder will flash between icons during processing
5. Completed folders show a checkmark icon

### Step 4: Monitor and Review
1. If warnings appear, click the **Warnings** button to view details
2. Monitor the **Files/Folders** count to track progress
3. Read the **Output** messages for real-time status
4. Once complete, the folder status changes to "Complete"

### Step 5: Complete Import
1. The queue automatically advances to the next pending folder
2. You can stop at any time and resume later
3. Re-run completed folders by clicking on them and confirming the prompt
4. Click **Done** when all imports are finished

## Context Menu Options

Right-click on items in the import queue for additional options:
- **Delete**: Remove a folder from the import queue
- **Properties**: Open the metadata editor for the selected folder

## Import Queue Management

### Queue File Location
The import queue is automatically saved to: