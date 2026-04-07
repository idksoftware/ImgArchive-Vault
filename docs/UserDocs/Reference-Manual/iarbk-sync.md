# Name

iarbk sync <options>

This command synchronises the primary archives with a cloud storage backup device.

## Synopsis

iarbk sync –master-with=<device id> –derivative-with=<device id> --delete=<device id>

## Description


Cloud Backups can become not fully in step with the latest updates made on the primary archive or a new device backup is to be brought online. For example: only one backup was used in the past but a second one now is required. The new second device backup will initially be empty, the sync command can be used to full the new backup and make it up to date with the primary archive.

## Options

 

#### How sync works

Sync is a two part process. First the repository that is to be synced will be scanned creating a list of images and metadata that make the archive into jobs to be run. The second part is to run the resulting jobs.

This enables the sync to be processed in much the same way as a image update.

The option --flush Flushise the jobs on a cloud device. This stops the sync but clears the device for a subsequent sync to be initiated.

Normal update jobs are unaffected.