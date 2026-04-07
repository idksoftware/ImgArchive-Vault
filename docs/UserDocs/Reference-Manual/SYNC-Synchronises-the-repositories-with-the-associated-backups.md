# SYNC – Synchronises the repositories with the associated backups

# Name

isadmin sync <options>

This command synchronises the primary archives with there associated backups.

## Synopsis

isadmin sync –master-with=[backup1] | [backup2] | [Both] –derivative-with=[backup1] | [backup2] | [Both] —vault-with=[workspace] | [pictures] | [www]

## Description


Backups can become not fully in step with the latest updates made on the primary archive or a new backup is to be brought online. For example: only one backup was used in the past but a second one now is required. The new second backup will initially be empty, the sync command can be used to full the new backup and make it up to date with the primary archive. Both the image and metadata will be synced to the backups selected.

## Options


To be moved

How sync operates.

All the Archives us the check disk index. On syncing a backup with the main Archive this index will be checked and updated if necessary. Once this is complete any images that need putting in the backup will be copied from the main Archive these will checked against the file checksum for correctness.

C:\Users\Iain Ferguson>iaadmin help sync

iaadmin Tool provides administration house keeping support for ImgArchive.

NAME:
sync

SYNTAX:
isadmin sync --master-with=[backup1] | [backup2] | [Both]
--derivative-with=[backup1] | [backup2] | [Both]
--workspace --force
--catalogue
--www

Description:
This command synchronises the primary archives with there associated
backups.

OPTIONS:

--master-with :
Sync this archive with named backup or both

--derivative-with :
Sync this archive with named backup or both

--workspace :
synchronize workspace
Syntax:
synchronize workspace

--force :
Forces over-write

--catalogue :
synchronize catalogue

--www :
synchronize www catalogue

Fatal:0000 - Failed to run application: ImgArchive Admin
