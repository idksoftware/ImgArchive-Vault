# ARCHIVE - Archives the repositories to long term storage

# Name


isadmin archive <options>

## Synopsis


isadmin archive [–media-size=<number>] | [–media-path=<path>]

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