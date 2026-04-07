# System Requirements

The system requirements for the ImgArchive product can be tailored to your requirements and can be flexible.

The processing requirement is medium to low as most of the work is done by the file system. A budget CPU with 8G bytes of memory will be sufficient. Being an archive most of the requirements are storage related. For example, if the archive is to be large then the storage must be at least as big as the archive plus some extra for when you add more images in the future. The storage must also take into account the number of on-line backups are required. 

## Points of failure

Any storage device is a point of failure. If a device such as a hard drive, SSD, DVD fails you then lose all the images on that device. So in order to save guard you images you need multiple devices. In addition the computer housing the hard drive can be a point of failure, if you cannot replace and install the hard drives from the failed computer into a replacement again you have lost all the images on the device.

### Data corruption

Data corruption refers to errors in computer data that occur during writing, reading, storage, transmission, or processing, which introduce unintended changes to the original data. 

In general, when data corruption occurs, a file containing that data will contain data that was not there when the file was last saved. In the case of an image this may not be noticed or completely corrupted, leaving the image unintelligible. ImgArchive checks at the time of import that the image saved in the archive is the same as the original using CRC and SHA256 checksums.

Some types of malware may intentionally corrupt files as part of their payloads, usually by overwriting them with inoperative or garbage code, while a non-malicious virus may also unintentionally corrupt files when it accesses them. If a virus or trojan with this payload method manages to alter files critical to the running of the computer's operating system software or physical hardware, the entire system may be rendered unusable. However this is unlikely as the virus or trojan infects files that are likely to be run such as program executables, i.e. files with the extension “*.exe”.

Using mechanical hard drives may be, in most cases, the source of most data corruption as they are mechanical and degrade over time. Unfortunately SSD also may degrade as the technology has a limited number of write cycles. however most of the cycles in the archive will be read cycles. these errors are known as *silent data corruption*

### Protectibg against silent data corruption

ImgArchive enables up to two finger printed backups of all images. That makes optionally makes three copies of each image. Having all the images finger printed using both CRC and SHA256 checksums help prevent silent data corruption. These are the errors that go unnoticed, without being detected by the disk firmware or the host operating system.

# Optimal system


In a optimal system you will need at least three hard drives in the system, four drives is ideal. This is because in an optimal system you would have three live copies of the archive. One primary and two backups. you may also add a drive for the working images.

This may sound excessive but drives are cheap. However the capacity of the drives are are huge and the the lost of a drive with possibly thousands of irreplaceable images on it make little sense not to have three live copies.

However, the system can function with just one drive if required. but, If this drive fails then you have lost all the images. This is not recommended.

The only caveat to that is if it is a RAID drive. However if the RAID controller fails or two drives fail then you may have lost the RAID array and thus lost the drive. Note: One problem with RAID is that if one drive fails the array will work without it and the array looks fine. It is only when a second drive fails does the array stops works at that point is to late. Beware of RAID.

Also raid drives may not (probably not) have data corruption detection. For example mirroring (RAID1) only makes mirrors of the data. The data may be corrupt.

# Minimum requirement


The minimum requirement is probably two self contained drives, one containing the main repositories and one containing a backup copy of those repositories. The working image can be placed on either drive.

In this system at least you will have one backup if the main repository drive fails.

The very minimum system is one drive if you do not care if you archive is lost.

# Typically Systems

A typical system can be a small PC with a 4 way 2.5in disk enclosure that fits into a 5in disk slot in a PC case. This will allow four 2.5 in disks in a comparatively small space. If the system is dedicated to being an image archive then it is practical to use a Remote Desktop.

## Using ImgArchive Remotely

A good option is to have ImgArchive running on a remote machine and sharing the working image folder (workspace) on the network. you can use Microsoft Remote Desktop to control the ImgArchive machine to import, check-out, check-in  images etc. but the archive can be inaccessible except when accessed remotely.

# Minimum System requirements

These are the basic requirements for installing ImgArchive.

Operating system: Windows 10.

**Processor:** **1 gigahertz (GHz)** or faster [compatible processor](http://aka.ms/CPUlist) or System on a Chip **(SoC)**

**RAM:** 1 gigabyte (GB) for 32-bit or 2 GB for 64-bit 

**Hard drive size:** A drive size 2 x size of the archive + space for OS. Note: no backups 

**Graphics card:** Compatible with DirectX 9 or later with WDDM 1.0 driver

**Display:** 800x600 or better. 

# Network Storage

Now the typical Network storage is connected via a 1Gbit Ethernet. So one option will be to connect a NAS drive to your image archive to give an online remote copy.

This could be one of the backup options to take to ensure that the loss of the main archive machine is mitigated. 

However 1Gbit runs at about 125 MB/s but a normal mechanical hard drive can reach or exceed 250 MB/s at their maximum speed but may reduce to as low as 80 MB/s.

With this in mind plus the fact that most NAS drives are mechanical this option may have merit.  In addition , 2.5, 5 and 10 Gbit Ethernet is coming down in price.

[<<Back](./Getting-started.md) 