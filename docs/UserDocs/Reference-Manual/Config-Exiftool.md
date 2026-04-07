# Config - Exiftool

**Description:**

ImgArchive contains a basic EXIF reader. however, there are EXIF readers that are ore advanced such as exiftool by by Phil Harvey. This option enables you to use such an external EXIF tool to read metadata from your imported images. see [EXIF](EXIF.md).

This option needs to be enabled using the ExternalExif. This needs to be set to true. 

By default the ImgArchive tools path is used to locate the external EXIF tool. for example:

*C:\ProgramData\IDK-Software\ImgArchive\tools*

however, the ExifToolPath option can be used to specify another location. 

The external EXIF tool runs in ImgArchive temporaries folder. This will be normally:

*<USERPROFILE>\\Local\\Temp"*

for example:

"C:\\Users\\<your user name>\\AppData\\Local\\Temp"

The arguments used to be passed to the external EXIF tool may need to be tailored to the external EXIF tool used. the  ExifCommandLine option can be user also to define that command line.

External EXIF tools like exiftool.exe read the image file then prints the output to the screen, ImgArchive can read this information and create the metadata. However this information may not be in the format required. this can be remedied using a Exif map file. This file contains the mapping between the output from the External EXIF tool and the format ImgArchive requires. The location of this file is:

*C:\\ProgramData\\IDK-Software\\ImgArchive/config/exiftool.ini*

Note: The default is *exiftool.ini*.

**Syntax:**

 

admin config –exiftool ExternalExif=<true | false>  

  Syntax:
    --exiftool <Option=Value>
        [ExternalExif=<Enabled|Disabled>] | [ExifFileDelim=<character>]
        [ExifMapPath=<path>] | [ExifMapFile=<filename>]
        [ExifToolPath=<path>] | [ExifTool=<name>]
        [ExifCommandLine=<argumentlist>]

External Exif Tool
ExifMapPath

admin config –exiftool ExifMapPath=<path>

ExifMapFile

admin config –exiftool ExifMapFile=<filename>

ExifTool
admin config –exiftool ExifTool=<toolname>

ExifCommandLine

admin config –exiftool ExifCommandLine=<commandline>

 