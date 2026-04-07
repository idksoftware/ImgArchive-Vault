# Master Repository

The master repository contains only originals from most likely a digit camera and consists of a main image partition file system and two backup partition file systems.

It is good practise to have two backups and are used make the master repository robust by having two copies of each original image to validate against. 

**sequential index identifier**

In addition to the partitioning of the images into the day captured, when an image is added to the archive a sequential index identifier is added to it. Each and every image has a sequential index identifier associated with it, and as it is given at the time it was added to the archive which will mean it will be is time order as to the time added to the archive, not the capture date. As it is a sequence number it will not be associated with the time itself. For example an image added 2015/02/12 may have an index of 983423, two days later 2015/02/14 the next image is added with the index of 983424. It does however allow the management of backups much easier. See Backing up the Archive.

Using this sequence number was an alternate to using the capture date as the primary index for the partitions. However this number is completely arbitrary. Using the capture date is much more intuitive to the human reader. In addition in most cases this data/time will be encoded into the EXIF data in the image, the sequence will not.