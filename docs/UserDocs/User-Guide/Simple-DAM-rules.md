# Simple DAM rules.

## 1. Do No Harm

Never manipulate your original media, i.e. the original image or images. Once the original is changed there is no way to revert to the untouched original its lost forever, always work on a copy of the original never the only copy of the original? ImgArchive supports versioning, when you make changes to an image in ImgArchive you check the image out of the workspace for changes, once the changes are made you then check the image back into the workspace. The changed version will be the current image in the workspace but the original will be preserved in the archive untouched. Each time you make a change a new version of the image will be made. If you wish to go back to the original or a previous version of the original the you can check it out into the workspace. The original is safe guarded along with any changes you made of versions of the original which in them selves may have had a number of hours invested in them.  

## 2. Be Safe With Your Data

Digital images take fractions of a second to make and, fractions of a second to be lost or destroyed. This can happen in a number of ways. But, for best protection, use the 3-2-1 rule of duplicating your data. This is standard practise in the IT Industry. 

◾ 3 Keep at least three copies of your data: your primary copy and two backups.

◾ 2 Keep your copies on two different, physically separate media. One set of files will likely be on your computer hard drive. Keep your two copies separated, each backed up to different media (external hard drives, USB flash drives, or cloud storage services).

◾ 1 Keep one copy of your images offsite. Some people use a system of rotating two external hard drives, swapping out one hard drive each week or each month, depending upon how frequently you add data. I use USB hard drives and store them away from main archive. A cloud storage service is also a good way of keeping a copy offsite, however some cloud storage does not store RAW image data or metadata. A non photographic cloud storage site may be better as your image data will be just that, and the cloud site will not try to manipulate your image data in any way. 

## 3. Back Up Supporting Documents

As part of the DAM process is to create metadata on you images. Metadata is the descriptive information about your images files (data about your data). Digital asset management systems rely heavily on metadata, as it’s critical for searching, retrieving and managing your digital assets. This is because the archive needs to know many aspects about an image in order to find an image or set of images from a search criteria. For example just looking at an image will not allow the system to associate the image with the Walkers wedding. However tagging the Walkers wedding photos with Walkers-wedding will. 

At its core ImgArchive uses the base Operating Systems file system in order to store image in an organised file structure. Metadata associated with each image is also stored in an organised file structure with the addition of an optional SQLite database. 

## 4. Never Use Your Archive for a Backup.

An archive is the place where one copy of each version of an image are stored. This usually means that your archive contains the original, untouched image file, and possibly the final working versions of the edited image files derived from the original or originals. These may be your originals which may be irreplaceable, but also may contain versions that may of taken some time to edit and get them just how you like them. If the archive is lost how would you recover?

Luckily ImgArchive contains the ability to maintain two online backups. This may take space on a second and possibly a third hard drive but the cost of hard is small compared to the lost of the archive. One possible way of using the two online backups is to have one backup on a second drive and one backup going to a USB hard drive this can be taken of the system a night and taken off-site, or better have a number of USB hard drives and plug a different one in each day. ImgArchive will update the missing data from the last time it was attached so by rotating USB hard drives you will have two up-to-date backups and plus a set of almost up-to-date backups. 

### Long term archival storage of the Archive

One way of safe guarding the archive is to periodically update an archival copy of the archive using Blu-ray. One of the major benefits of Blu-ray as a data archiving solution is the format's durability. Traditional hard disk drives are prone to hardware failure as their components inevitably diminish over time. Blu-ray discs, meanwhile, are much sturdier, ensuring that this information will be available for years to come. If you use Archival quality Blu-ray disks then some manufactures specify a 100 year life of the disk.
ImgArchive makes burning Blu-ray easy, given the size of the Bly-ray you are using ImgArchive will create a set of volumes. each no larger in size than the maximum size of your Bly-ray disks. Each volume will have a number this is its volume set number,
on recovering the archive the volumes will be read back in the same order to recreate the archive. 

## 5. Regularly Check and Update Your Archive

The way most archives are used, images within them may only be accessed infrequently but does not diminish the importance of the image, you expect the image to be accessible and intact. Looking in your file directory and seeing an organized list of all of your image files may be reassuring, but don’t be fooled. Just because the image file shows up in your file directory does not mean that the file is usable. The file could be corrupted or the storage medium could also be corrupt or damaged. 

ImgArchive will in the near future perform data scrubbing. Data scrubbing is an error correction task that inspects the archive storage for errors by reading the data then uses stored checksums to find if the data has changed. if so, a copy of the data will be used to replace the damaged data.  Data scrubbing reduces the likelihood that single correctable errors will accumulate, leading to reduced risks of uncorrectable errors.   

Only a few of the currently existing and used file system provide sufficient protection against type of data corruption and is where ImgArchive fills this gap. see [Data Scrubbing](https://idk-solutions.atlassian.net/wiki/spaces/ImgaWiki/pages/1926955037).