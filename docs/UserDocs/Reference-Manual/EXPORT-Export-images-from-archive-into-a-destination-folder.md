# EXPORT – Export images from archive into a destination folder

# Name

iavault export <options>

## Synopsis

iavault export [–out=<options>] [–file=<filename>]

--filter { <tag=condition> }

## Description

This is used for exporting images out of the archive.

Images can be exported from the archive in a numbers of ways, for example: A set of holiday images may be exported by the date of the holiday or may be if the holiday images where hash tagged with say #Cornwall-19 etc. ImgArchive allows the export of images by a number date or metadata properties. This command enables you to select the images you wish to export and perform the export into a folder selected.   

## Options

–out :

Output type: text, xml, json or html.

## Syntax


out=[plain] | [xml] | [json] | [html]

–file :

output file name. 
Syntax:

file=<filename>

Options

--prop

This command allows search criteria and only images that match that criteria will be exported.

The command line options are as follows: * --archive-folder The archive this command will use to export the images. This will not normally required as the current archive will be used.

 

--dest-folder The folder the images will be placed then exported from the archive.

--current-path Use the current path to place the exported images

-–quiet No output to the terminal

-–verbose All information to the terminal

-–logging-level Sets the logging level of detail that will be places in the log file.

--dry-run Run the command but do not change the archive.

--source-folder The source folder in the archive from which the images will be taken.

--image-list This consists of a list of images that will be exported

--include This instructs the export command if other files are to be included in the export. A common example would be the metadata in XML form.

--update-only This is used if the destination folder contains previously exported images. if an image in the destination has the same filename and as the one in the archive then the image will not be copied. A CRC comparison will be made of both images, if they match then SIA will not copy a new image out of the archive.

--use-index This generates a file name for each image based on its index number in the archive. Using this guarantees the file name being unique and traceable by the archive when using the update-only option.

Description

This is how images can be retrieved out of the archive repository to a new location. For example you may be taking a copy of some images to give to a friend or sent to the printers to be printed. This exported copy will not be controlled by the archive and need not be returned to the archive. The master copies will still be in the archive untouched by this operation.

As this is a copy, and potently may be out of you control, you can use a plugin to remove all EXIF data or add a copyright into the EXIF if not already done. You can also add watermarks to protect the image.

For example, this command may be used to create a staging area for an on-line gallery. This gallery may contain your best images on say, Landscape. You can select all the images to be included in the gallery, this selection can be put into a images list file like the example below:

2016-01-28/dsc_090006.jpg 
2016-01-28/dsc_090007.jpg 
2016-01-28/dsc_090009.jpg 
2016-02-10/dsc_090012.jpg 
2016-02-10/dsc_090011.jpg 
2016-02-10/dsc_090016.jpg

If the image list file is called "landscape.dat" and the command:

siaarc export update-only use-index destination=c:/tmp/landscape images-list="landscpape.dat"

The command Will copy the images from the archive into "c:/tmp/landscape" this path needs to exist for the operation to be successful. The output will be something like the folder contents below:

DSC_00006573.jpg 
DSC_00009864.jpg 
DSC_00003429.jpg 
DSC_00007832.jpg 
DSC_00008534.jpg 
DSC_00007776.jpg

The real output will be based on the actual indexes in your archive. This command can be run at any time, only if images have changed in the archive or destination folder will any images be copied.

Duplicate filenames

Then the images are imported the file names of images may be changed to prevent one image overwriting another with the same file name. However this only needs to be carried out if the file names clash within the same day folder. So the file names are unique within the day folder. To continue the uniqueness of file names SIA will prepend the date to each image. For example:

2016-02-10/dsc_090016.jpg

will become

2016-02-10_dsc_090016.jpg

This will also make sure if the "--outdate-only" option is used at a later date the images can be synced correctly with the correct file name format.

Another (possibly better) way would be to used the index-name option. This renames all the image filenames into the index number within the archive. All exported images files name will have the same format of the following:

DSC_XXXXXXXX.YYY

This consistent file naming convection allows automated tools to process the images in a standard way. 
Again this will also make sure if the "--outdate-only" option is used at a later date the images can be synced correctly with the correct file name format.

The meaning of DSC

CIPA (the Camera & Imaging Products Association) has long established DSC as meaning Digital Still Camera. This prefix is not mandated by the DCF (Digital Camera Filesystem) standard but was adopted by an number manufactures and is useful to include if a set of associated files are exported for example:

DSC_00002152.jpg 
DSC_00002152.nef 
DSC_00002152.xml