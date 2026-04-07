# CHECKOUT – Checkout images from archive to workspace

# Name

***iaarc checkout  <options>***

Or

***iavault co <options>***

Short for “checkout”; not “ci”, which is short for “checkin”)

## Synopsis

Checking out an image to be edited in a controlled way.

iavault checkout [-q | –quiet][--setting=<Option>]

## Description


Checking out an image informs the archive that an image is to be edited. the checked out image will be placed in the Workspace under it’s address i.e. *2025-06-04/DSC-98645.jpg* will be placed in *(path to workspace)/Workspace/2025/2025-06-04/DSC-98645.jpg.*

On checking out an image the image will be changed to read/write enabling the imaged to be edited. By informing the archive that it is to be edited the archive can list all the checked out images and whether any edits have been made. If an image has changed then those changes can be checked back in (checked-in) to the archive and the changes are captured in the image as a new  version.

### Checkout exceptions

This is where a clean check-out can not be made. A clean check-out is where an image to be edited, is checked-out into the Workspace where the location the images is to be checked-out is emply or the image file at that location is the same as the image file to be checked-out, i.e. the existing Workspace and checked-out image files are the same. 

If images has been put into the Workspace using the Get command then images in the Workspace then edited.

On the check-out command, the checked out file may over-write the edited images. Two options, one allow the checked out image over-write the edit image or allow the edited image to not be overwritten. By default, the edited image is not overwritten. However sometimes a clean checkout is required. To anable this the --force option as part of the check-out command. 

## Options

Checkout has a the following options:

--force

This option forces the checking out of an image, If an image of the same name is already in the workspace the checkout command will not overwrite it. This saves any accidental overwrites of editing to an image. However if you wish to overwrite the changes then using the forced command will do that and change the status of the image to be checked-out. 

--scope

This limits the scope of the checkout to a set of images. This may be one, a selection or all of the images in the archive.

## Examples


`iavault checkout --scope=2017-01-05/DSC00310.JPG`

result:

```
Result: Completed successfully
```