ImgArchive
==========

Beta release 12/08/2023

This software installs as a command line tools only. These are:

iavault.exe - The ImgArchive client tool. This provides the means to operate ImgArchive.
iaadmin.exe - The ImgArchive administration Tool. This provides configuration and administration house keeping support for ImgArchive.

Quick install instructions
==========================

To run the software you will need to open a new command
 prompt (cmd.exe).

Note: For more information please goto https://idk-solutions.atlassian.net/wiki/spaces/ImgaWiki/overview 

To run the ImgArchive client tool
---------------------------------

type:

iavault.exe about<cr>

If installed correctly you will see the following help message:

ImgArchive client tool
iavault version "0.9.002" (build 64a9bc2b) Aug 12 2023 13:24:10
64 bit Windows  Copyright@(2017-2020) IDK Solutions Ltd.

Note:
The administration of the archive is carried out by the "iaadmin" command-line
interface.


These are common ImgArchive commands used in various situations:
.......



To run the ImgArchive administration tool
-----------------------------------------

type:

iaadmin.exe about<cr>

If installed correctly you will see the following help message:

ImgArchive Administrator tool
iaadmin version "0.9.002" (build 64a9bc2b) Aug 12 2023 13:24:10
64 bit Windows  Copyright@(2017-2020) IDK Solutions Ltd.


Checking the installation
-------------------------

The iaadmin Tool provides a show sub-command to display the current statue of the installation.

Main Installation folders
=========================
To show the location of the main installation type the following:

iaadmin show --setting=folders

The output from this will be the following:

Folders
=======
ImgArchive Home Location
  IMGARCHIVE_HOME using System Environment at loacation:
        C:\ProgramData\IDK-Software\ImgArchive

Application paths
  Configuration path:        C:\ProgramData\IDK-Software\ImgArchive/config
  System path:               C:\ProgramData\IDK-Software\ImgArchive/system
  Log path:                  C:\ProgramData\IDK-Software\ImgArchive/logs
  Tools path:                C:\ProgramData\IDK-Software\ImgArchive/tools
  Hook path:                 C:\ProgramData\IDK-Software\ImgArchive/hooks
  History path:              C:\ProgramData\IDK-Software\ImgArchive/history
  SQL Database path:         C:\ProgramData\IDK-Software\ImgArchive/sqldb
  Templates path:            C:\ProgramData\IDK-Software\ImgArchive/template
  Duplicates path:           C:\ProgramData\IDK-Software\ImgArchive/dups

This display's the location of the of there ImgArchive is located.

Main Repostories
================
These consist of the master and derivative repositories.


To display where the primary repositories are located we need two other settings to be used. These are
the following:

Type:

iaadmin show --setting=master

to display the master repository settings. This will be displayed in the format below:

Master Archive
==============
  Master Archive Location
        C:\ProgramData\IDK-Software\ImgArchive/master

  Master Archive Backups
        Backup One Enabled:        False
        Path not Valid:            C:\ProgramData\IDK-Software\ImgArchive/backup/MasterBackup1
        Backup Two Enabled:        False
        Path not Valid:            C:\ProgramData\IDK-Software\ImgArchive/backup/MasterBackup2

And Type:


C:\Users\iferg>iaadmin.exe show --setting=derivative

to display the derivative repository settings. This will be displayed in the format below:

Derivative Archive
==============
  Derivative Archive Location
        C:\ProgramData\IDK-Software\ImgArchive/derivative

  Derivative Archive Backups
        Backup One Enabled:        False
        Path not Valid:            C:\ProgramData\IDK-Software\ImgArchive/backup/DerivativeBackup1
        Backup Two Enabled:        False
        Path not Valid:            C:\ProgramData\IDK-Software\ImgArchive/backup/DerivativeBackup2

One further setting you may needs is the location of the working folders. These being

The Workspace, the picture catalogue and the Web picture catalogue.

For this installation we will only check the location of the workspace. This can be done by typing the following:

iaadmin show --setting=workspace

As you can see below by default the workspace will automaticaly get newly imported images into the workspace.
However this mages will be set to read-only.
To edit an image you will need to check the image out of the archive. See http://imgawiki.org to perform that action. 

Workspace
=========
  Workspace Location
        C:\Users\iferg\ImgArchive\Workspace
      Auto view: On
  Auto checkout: Off

Finally
=======

To add images into the archive you will need to import them. The simplist way is just to point iaarc.exe to the location
of the images to be imported by the following:

C:\Users\iferg>iaadmin show --setting=workspace


Userspace
=======
  Userspace Location
        C:\Users\iferg\ImgArchive


C:\Users\iferg>iaadmin show --setting=picture

Picture
=======
  Picture Location
        C:\Users\iferg\ImgArchive/Pictures
  Auto view: On


C:\Users\iferg>iaadmin show --setting=www

WWW
===
  path not found
  Auto view: Off