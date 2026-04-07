# BACKUP - Cold Backup the repositories to long term storage

This command is used for Backup the repositories to Cold/Offline bulk media for long term storage 

The strategy for backing up an archive to cold storage is slightly different to backing up say your desktop PC. The first thing is that the archive repositories is arranged in date order. That is, as you add images to your archive the image number grows and so the newness image have the highest number and the oldest the smaller number so the place of where old images and new is known.

This is by contrast to your PC that has a random pattern of new and old files spread over the PC’s hard drive and files will be deleted as part of the day to day operation of the PC. Other differences, is that the images will not change very often, once in the archive new images will be added but old images will not be deleted. In fact this is why there is a master and derivative repositories. Having two repositories keeps new changes in the newest parts of the archive.

So Backing up the archive can be achieved simply by incrementally backing up blocks of dates. One way is to backup the archive to tape

# Name

 

isadmin backup <options>

## Synopsis

 

isadmin backup [–media-size=<number>] | [–media-path=<path>]

[–from-date=<date>] | [–to-date=date]

## Description

These options control the backup activities.

## Options

 

–media-size :

size of media in GBytes

## Syntax:

 

–media-size=<SizeInGBytes>

–media-path :

Path where media is located
Syntax:

–media-path=<path>

–from-date :

from date, Date from which to start the archiving. If none given will be
from the bebining of the archive
Syntax:
–from-date=<<day>/<month>/<year>> example: –from-date=02/09/2011

–to-date :

to date, Date to shop archiving. If none given will be to the end
(lastest item).
Syntax:
–to-date=<<day>/<month>/<year>> example: –to-date=05/12/2019

 

C:\Users\Iain Ferguson>iaadmin help archive

iaadmin Tool provides administration house keeping support for ImgArchive.

NAME:
archive

SYNTAX:
isadmin archive [--media-size=<number>] | [--media-path=<path>]
[--from-date=<date>] | [--to-date=date]

Description:
These options control the backup activities.

OPTIONS:

--media-size :
size of media in GBytes
Syntax:
--media-size=<SizeInGBytes>

--media-path :
Path where media is located
Syntax:
--media-path=<path>

--from-date :
from date, Date from which to start the archiving. If none given will be
from the bebining of the archive
Syntax:
--from-date=<<day>/<month>/<year>> example: --from-date=02/09/2011

--to-date :
to date, Date to shop archiving. If none given will be to the end
(lastest item).
Syntax:
--to-date=<<day>/<month>/<year>> example: --to-date=05/12/2019

Fatal:0000 - Failed to run application: ImgArchive Admin  