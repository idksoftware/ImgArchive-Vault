# NAMING - File Naming Convention

# Name - This command has been moved to Config

 

isadmin naming <options>

## Synopsis

 

isadmin naming [-q | –quiet][ 

 

## Description

This command sets how ImgArchive renames image files when images are imported into the archive. This only occurs at import time. This allows images to have a more descriptive name than the default DCIM (Digital Camera IMages) standard one that is normally given to the image by the camera.

ImgArchive supports two modes:

No Rename and Rename. No rename and the image file name can be left unchanged. Using the “NoRename” option, ImgArchive will use this mode, However if a image file clashes with one already in the same folder ImgArchive will rename the new image file with a sequence number so the files can be stored together. The alternative is the new file will over-write the old which is not ideal. 

Rename option, this will completely change the image file name used. This new file name follows a template that is used on all image file names contained in the archive. This allows fixed and variable components in the name that will make the image file unique to the storage folder. 

An example template:

DSC{Sequence-base16}_{Readabledate-ddmmyyyy}<>[versionn-base10].jpg

If the original image DSC097877.jpg, the keyword is Wales09, the date is 11/04/2009, the sequence is 6745, and lastly the current version is 02, so the new image file name will be:

DSC006745-11042009Wales09[03].jpg

 

 

Optional keywords 

optional keywords can be added so the file name can be associated as a set. For example: Say that a collection of images where shot at a holiday in Scotland 2008. An optional keyword Scotland08 can be added. Both modes can have keywords added. In the case of the “NoRename” mode a template needs to be defined as to where the keyword is to be included.

 

Sequence,
Date,
Readabledate,
NoRename

 

## Options

 

 

## Returns