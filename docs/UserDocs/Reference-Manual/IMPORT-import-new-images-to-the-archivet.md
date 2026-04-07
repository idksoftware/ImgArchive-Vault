# IMPORT – import new images to the archive.

# Name

***iavault import <options>***

Or

***iavault import <options>***

## Synopsis

iaarc import [-q | –quiet] [–user <all | local>] [–set-home-env <yes | no>][--force]

## Description

In order to add images into the archive you must Import them. This command allows you to import images into the archive. This command will import images from a source folder such as the “pictures“ folder or a folder maybe specified using the source path option.

### Alternate Names


ci (short for “check in”; not “co”, which is short for “checkout”)

Changes

Working copy, repository

Accesses Repository

Yes

Options

Examples

Add or import Images

This is how images are placed in the archive repository. The DAM term is Ingestion, or just simply getting the images into the archive. In order to add or import images to the archive one important piece of information needs to be known, that being the source folder of the imported images. This may be a camera connected by USB or a folder with images contained within it, or a folder on the computers hard drive. By default it will be the current folder iaarc.exe is run. For example: if the command line cmd.exe is open current  images to be imported are in “My Pictures” then all the images in “My Pictures” will be imported.

Importing an image or images is a two part process. The first part is to identify which images are to be imported. The second part is to import the images into the archive. ImgArchive can carry out both parts automatically, however it may be preferable to split into two by using a journal file.

The Journal file.

The file contains all the images that you wish to import. Generating this file is done by identifying the images to be imported. This file can be edited giving the option to delete or add images before importing.

Using the journal file.

The Journal file can be used by the import command by passing it's path on the command line. 

This information is obligatory. However this values can be found automatically using environment variables or placed in the main configuration file.

In addition, these are defaulted, meaning, If source folder cannot be found in the configuration file the archive will use the current directory, If archive folder cannot be found in the configuration file will use the platform default. for example, on a system running Windows the archive will be placed in the default Folder:

$ProgramData/IDK Software/ImgArchive. See platform defaults.

Here are some examples:

Using defaults:

iaarc import

This will look in the current folder and place any images found in the archive found using the environment variable IA_HOME or the platform defaults.

 

 

 

The command line options are as follows:

-source-folder The folder the images will be taken from to be placed in the archive.

–quiet No output to the terminal

–verbose All information to the terminal

–logging-level Sets the logging level of detail that will be places in the log file.

--dry-run Run the command but do not change the archive.

-refresh Add the images to the archive. if found to be missing or changed replace the images in the archive with these ones.

-keep-dups= On finding a duplicate image place the new image in the duplicates folder.

-use-today This option forces the archive date to be todays date. All other dates are ignored.

-use-filedate Use file date forces the archive data to be the image file date. In the case of a RAW/JPG pair then the RAW image file date will be used.

-use-date= This option forces the archive date to be the date specified in the date argument. This can be used in the case were the capture date in the camera may be incorrect and the correct date to be explicitly specified.

For example: --use-date=2014.07.12