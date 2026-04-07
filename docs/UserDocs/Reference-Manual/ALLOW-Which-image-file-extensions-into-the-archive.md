# ALLOW – Which image file extensions into the archive

# Name


isadmin allow <options>

## Synopsis


isadmin allow [-q | –quiet][ –add=<ext,type,mine,description>] | [ –delete=<ext>] |

[ –edit=<ext,type,mine,description>]

The coma separated value must conform to the following:

- ext - extension The image extension that you wish to include in the archive
- type - Type of image.
  The type of image, picture or RAW. This must be one of two keywords:
  type = [ Picture | Raw ].
  picture - A picture type of image i.e. one that is native to the web, for example jpg, gif, bmp, png etc.
  RAW - A RAW type of image such as nef as in the case of Nikon RAW.
- The mine type.
- A description of the image type.

## Description


the command “allow” controls which image file extensions are allowed into the archive. Digital camera’s normally generates JPG files to store digital images. However camera’s can also generates RAW image file that will have different files with different extensions. For example Nikon camera’s will generate RAW image files with the extensions of *.nef for example, dsc02319.nef. To allow these types of images files into the archive you will need to Allow them using this command.

## Options


The options are partitioned into sections. Each section contains a set of options that refer to a set of associated functions this are detailed below:

Add
Adds an extension type to file type filter. File of this type can now added to the archive.

–add=<ext,type,mine,description>

Delete
Deletes an extension type from file type filter. File of this type will now be excluded from the archive.

–delete=<ext>

Edit
Edits the extension details.

–edit=<ext,type,mine,description>

 

 

## Returns