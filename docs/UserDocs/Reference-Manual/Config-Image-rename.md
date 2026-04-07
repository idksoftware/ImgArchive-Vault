# Config - Image rename

There are two parts to the rename function. The first is a required part. When images are moved into a day folder it must be unique in that folder otherwise it will overwrite the prevous image. So to stop such chashes, the second image file must be renamed. The second part is optional.  This enables you to configure image re-naming. normally the image file name archived is the one created by the camera at time of shooting. These are something like DSC4369.jpg. The DSC stands for Digital Still Camera this is defined by EXIF. the problem with this file name is that it does little to define the origine of the images. re-naming to something like the date taken or a sequence number that ts used by the achive.

## Options

--rename or -RN

--rename <Option=Value

- Renaming=<Enable|Disable>
- PreName=<per-name string>
- RenameType=sequence | date | readabledate
- RenameBase=base32 | base16 | base10
- Version=base32 | base16 | base10

### Pre-name

this is a user defined string that presedes the sequence number or capture `date.

### Rename Type

This is the type of rename that can be used in the re-naming of the image file.

- sequence
- date
- readabledate

 

#### Sequence

This is the sequence number that is used in the renamed image file. 

#### Date

This is an encoded capture date used in the renamed image file.

#### Readable Date

A man readable date used in the renamed image file. 

### Rename Base

This defines the number base of the sequence. By default the number base is base 10 (decimal). However, base16 (hexdecimal) or base 32 allows for much larger numbers in less characters.

The options are defined as follows:

- base32 - (RenameBase=base32)
- base16 - (RenameBase=base16)
- base10 - (RenameBase=base10)

### Version

This is the version of image which is used in the manditory renaming when an image file is chashing with the name already in a day folder.

The options are defined as follows:

- base32 - (RenameBase=base32)
- base16 - (RenameBase=base16)
- base10 - (RenameBase=base10)

## Examples

config --rename Renaming=enable --format-type=xml --silent

config --rename PreName=”Iain_”

 