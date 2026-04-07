# Setting up Environment Variables

#### Location of runtime environment and the IMGARCHIVE_HOME environment variable.

The location of the ImgArchive runtime environment can be found two ways; explicitly, by an environment variable IMGARCHIVE_HOME, or implicitly, by using a known location used by the OS.

IMGARCHIVE_HOME specifies where the application home folder is located. The main configuration will be in a folder named “config” and the main configuration is called “config.dat”.

**ImgArchive environment variables**

ImgArchive application compontent paths can be defines using environment variables. However with the exeption of the IMGARCHIVE_HOME environment variable, these variables can be overriden by options specified in the configuration file.

 Linux

Under the Apple Mac SIA can be installed using Apple Install package sia.pic. This will install SIA into the default locations. Coming soon.

Using SIA administration tool

The SIA administration tool siaadmin.exe can be used to install the SIA environments using the initialisation command "init".

 

In order to use this command you will need a command prompt or terminal window. see

This command will initialise the environment allowing SIA to manage the archive, the location of which will be determined be the arguments passed to the "init" command. If no arguments are passed then the "init" command will use the standard OS platform installation locations using administration privileges.

For example:

 

```
siaadmin init
```

 

see [Using Environment Variables](Using-Environment-Variables)

 

Initialisation command arguments

These arguments will enable you pick the location of the initialled environment, the archive and the workspace. On windows programs can be installed as for all users of the machine or for just you the current user.

 

Standard OS platform installation locations

SIA is normally installed in a default location defined for the OS platform it is running under. Each OS platform has a default location for third party applications. The standard locations or each of the three main platforms are described as follows:

Windows

Windows uses the environment variables; ProgramData and ProgramFiles. These locate the standard locations of the program data and the program files. SIA extends these to make a SIA specified folder path. For example the standard location under windows for SIA to install is self is $(ProgramData)\IDK Software\sia1.1 for the data files needed to run SIA and $(DrogramFiles)\IDK Software\sia1.1\bin

 

_Note_ the windows environment variable ProgramData will normally be defined as:

ProgramData=C:\ProgramData

The program files may look like this:

ProgramFiles=C:\Program Files

 

SIA will search these two paths looking for the SIA installed files. SIA_HOME may contain the windows data file plus the SIA specified path i.e.:

SIA_HOME=”c:\ProgramData\IDK Software\sia1.1”

Or can be left blank.

The standard location for windows binaries is C:\Program Files

Apple Mac

Under the Apple Mac SIA can be installed using Apple Install package sia.pic. This will install SIA into the default locations.

Linux

Under the Apple Mac SIA can be installed using Apple Install package sia.pic. This will install SIA into the default locations

 

Third Party tools

[<< Back](./User-Guide.md)

 