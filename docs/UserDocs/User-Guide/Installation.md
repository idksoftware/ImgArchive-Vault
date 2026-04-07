# Installing

Initial installation is simple and straightforward process. This is because ImgArchive only consists of small number of executables. The main ones are called:

iavaultt.exe - The main archive management tool

iaadim.exe - This supports the archive by providing housekeeping functions.

These two executables then control the ImgArchive runtime environment. This installation is the support that under pins the image archive. This needs to be setup in order to get the best out of ImgArchive.

iarbk.exe - Supports the remote/cloud backup processes. 

Installation is a two part process, the first is to install ImgArchive on your PC with a basic setup, Then the second part is to setup the runtime environment to be tailored to your requirements.

Before installing ImgArchive it may be advisable to review the system requirement. This describes the types of hardware environment required to support the setup you have in mind.

## Downloading ImgArchive

A 64 bit installation package is available at http://imgarchivevault.com/download . This will download a iasetup.zip. In this zip file is the installer iasetup.exe. Double click on this and the installer will start.

Note the reason for wrapping iasetup.exe in iasetup.zip is that a number of virus checkers will not download executable files directly. 

ImgArchive can run in both normal and elevated mode. Elevatored is the preferred option as it allows full access to the machine.

## Microsoft’s redistributable packages.

Under windows, this application uses Microsoft’s redistributable packages for Visual Studio 202222. These packages need to be installed before ImgArchive can be used. These may already be on you system as a lot of applications also need them. If you do need to install them, these can be downloads from Microsoft for free at:

[Download Visual C++ Redistributable Packages for Visual Studio 2013 from Official Microsoft Download Center](https://www.microsoft.com/en-gb/download/details.aspx?id=40784) 

However a MSI install package “iasetup.msi” is available, this contains all the required packages and installs the application in the default locations. Coming soon.

# Verifying the default installation

This software installs as a command line tools only. These are:

iavault.exe - The ImgArchive client tool. This provides the means to operate ImgArchive.
iaadmin.exe - The ImgArchive administration Tool. This provides configuration and administration house
keeping support for ImgArchive.

To run the software you will need to open a new command
prompt (cmd.exe).

### To run the ImgArchive client tool

type:

c:\iavault.exe<cr>

If installed correctly you will see the following help message:

iavault- Image archive client provides the means to operate ImgArchive from the
command line

### To run the ImgArchive administration tool

type:

```
c:\iaadmin.exe<cr>
```

If installed correctly you will see the following help message:

```
iaadmin Tool provides administration house keeping support for ImgArchive.
```

`usage: iaadmin subcommand [options] [args]`
`ImgArchive command line administrator, version 1.0.0.1`
`Type 'iaadmin help <subcommand>' for help on a specific subcommand.`
`iaadmin is the primary command-line interface to administer ImgArchive.`

## Checking the installation

The iaadmin Tool provides a show sub-command to display the current statue of the installation. It
Use this command type the following:

```
C:\Users\iferg>iaadmin.exe show --setting=folders
```

The output from this will be the following:

```
Folders
```

`ImaArchive Home Location`
`IMGARCHIVE_HOME using System Environment at loacation:`
`C:\ProgramData\IDK-Software\ImgArchive`

`Application paths`
`Configuration path: C:\ProgramData\IDK-Software\ImgArchive/config`
`System path: C:\ProgramData\IDK-Software\ImgArchive/system`
`Log path: C:\ProgramData\IDK-Software\ImgArchive/logs`
`Tools path: C:\ProgramData\IDK-Software\ImgArchive/tools`
`Hook path: C:\ProgramData\IDK-Software\ImgArchive/hooks`
`History path: C:\ProgramData\IDK-Software\ImgArchive/history`
`SQL Database path: C:\ProgramData\IDK-Software\ImgArchive/sqldb`
`Templates path: C:\ProgramData\IDK-Software\ImgArchive/templates`
`Duplicates path: C:\ProgramData\IDK-Software\ImgArchive/dups`

This display's the location of the of there ImgArchive is located.

To display where the primary repositories are located we need two other settings to be used. These are
the following:

Type:

```
C:\Users\iferg>iaadmin.exe show --setting=master
```

to display the master repository settings. This will be displayed in the format below:

```
Master Archive
```

`Master Archive Location`
`C:\ProgramData\IDK-Software\ImgArchive/master`

`Master Archive Backups`
`Backup One Enabled: False`
`Path not Valid: C:\ProgramData\IDK-Software\ImgArchive/backup/MasterBackup1`
`Backup Two Enabled: False`
`Path not Valid: C:\ProgramData\IDK-Software\ImgArchive/backup/MasterBackup2`

And Type:

```
C:\Users\iferg>iaadmin.exe show --setting=derivative
```

to display the derivative repository settings. This will be displayed in the format below:

```
Derivative Archive
```

`Derivative Archive Location`
`C:\ProgramData\IDK-Software\ImgArchive/derivative`

`Derivative Archive Backups`
`Backup One Enabled: False`
`Path not Valid: C:\ProgramData\IDK-Software\ImgArchive/backup/DerivativeBackup1`
`Backup Two Enabled: False`
`Path not Valid: C:\ProgramData\IDK-Software\ImgArchive/backup/DerivativeBackup2`

One further setting you may needs is the location of the working folders. These being

The Workspace, the picture catalogue and the Web picture catalogue.

For this installation we will only check the location of the workspace. This can be done by typing the following:

```
C:\Users\iferg>iaadmin.exe show --setting=workspace
```

As you can see below by default the workspace will automatically get newly imported images into the workspace.
However this mages will be set to read-only.
To edit an image you will need to check the image out of the archive. See [http://imgawiki.org](http://imgawiki.org/) to perform that action.

```
Workspace
```

`Workspace Location`
`C:\Users\<your name>\ImgArchive\Workspace`
`Auto view: On`
`Auto checkout: Off`

## Finally

To add images into the archive you will need to import them. The simplest way is just to point iaarc.exe to the location
of the images to be imported by the following:

iaarc.exe import --source-path=<path to images to be imported>

for example:

```
iaarc.exe import --source-path=C:\Pictures
```

Where C:\Pictures is the folder with the images to be imported.

iaarc.exe will display the status of the import and will end with sometime like the following:

`[ SUMMARY ] Stage 4: Validating images completed`
`[ SUMMARY ] Imported 4 image files found in 3 Folder(s) into the archive, 0 image files rejected`
`[ SUMMARY ] Application completed successfully at Wed Oct 14 12:34:33 2020`

This will mean 4 image files found and imported.

If you now find the location of the workspace the 4 images will be contained in the workspace under the date created or shot.

You will probably need to customise this default setup to maximize disk usage. To do that see [Setting up](https://idk-solutions.atlassian.net/wiki/spaces/ImgaWiki/pages/1756626949).

 
