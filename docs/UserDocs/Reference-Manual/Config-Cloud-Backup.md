# Config - Cloud-Backup

This section allows you to configure the Cloud Backup system.

ImgArchive allows you to backup the Archive as two local backups plus three cloud backup instances. This is very possibly over kill, however, this will give a high flexibility of how you backup your archive.

For example: You may have a backup to a local disk for fast access to a backup plus an FTP backup to an FTP server, a rclone session to Google Photos and finally a rclone session to Dropbox. All of these are self contained backups, so if any provider loses your images then the copies will save your images. This mostly not too unlikely but it can happen. For example that your payment elapses and a provider deletes your account. One thing to note. Cloud storage is just storage on some one else's computer.

## Backup devices

These are the devices that interface between the archive and the remote cloud storage. ImgArchive supports at present FTP, rclone and local disks. Local disks device extend the Local backup to five instances. Rclone is used for a large number of cloud storage installations such as Dropbox, Google AWS etc. See RClone.com.

## Setting up cloud backup

Cloud backup must be enabled and a valid path for the staged image file information.

##### Syntax:

iaadmin config --cloud-backup enabled=[true|false]

iaadmin config --cloud-backup path=<path to image file information>

##### Example:

```
config --cloud-backup enabled=true
config --cloud-backup path=F:\cloudbackup
```

#### Setting up cloud backup device

From the archive side only the device type and which one of the three devices are used.

##### Syntax:

iaadmin config --cloud-backup Dev0Enabled=[true|false]

iaadmin config --cloud-backup Dev0=[ FTPDevice | TestDevice | RCloudDevice ]

##### Example:

```
iaadmin config --cloud-backup Dev0Enabled=ture
iaadmin config --cloud-backup Dev0=RCloudDevice
```

Will set device 0 to be a FTP device. 

On the remote device side the setting up may be  device dependent. For example FTP will normally need a hostname, username and password, RClone may just need the name of the device.

 