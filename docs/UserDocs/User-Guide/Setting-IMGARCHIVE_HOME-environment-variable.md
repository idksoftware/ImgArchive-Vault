# Setting IMGARCHIVE_HOME environment variable

The location of the ImgArchive runtime environment can be found two ways; explicitly, by an environment variable IMGARCHIVE_HOME, or implicitly, by using a known location used by the OS.

IMGARCHIVE_HOME specifies where the application home folder is located. The main configuration will be in a folder named “config” and the main configuration is called “config.dat”.

# Standard OS platform installation locations

ImgArchive is normally installed in a default location defined for the OS platform it is running under. Each OS platform has a default location for third party applications. The standard locations or each of the three main platforms are described as follows:

## Windows

Windows uses the environment variables; ProgramData and ProgramFiles. These locate the standard locations of the program data and the program files. ImgArchive extends these to make a ImgArchive specified folder path. For example the standard location under windows for ImgArchive to install is self is $(ProgramData)\IDK Software\ImgArchive for the data files needed to run ImgArchive and $(ProgramFiles)\IDK Software\ImgArchive\bin

_Note_ the windows environment variable ProgramData will normally be defined as:

ProgramData=C:\ProgramData

The program files may look like this:

ProgramFiles=C:\Program Files

 

ImgArchive will search these two paths looking for the ImgArchive installed files. SIA_HOME may contain the windows data file plus the ImgArchive specified path i.e.:

IMGARCHIVE_HOME =”c:\ProgramData\IDK Software\ImgArchive”

Or can be left blank.

The standard location for windows binaries is C:\Program Files

## Apple Mac

Under the Apple Mac ImgArchive can be installed using Apple Install package ImgArchive.pic. This will install ImgArchive into the default locations.

## Linux

Under the Apple Mac ImgArchive can be installed using Apple Install package sia.pic. This will install SIA into the default locations

[<<Back](./Getting-started.md) 