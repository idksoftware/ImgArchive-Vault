# A Brief introduction to Digital Asset Management (DAM).

3

# What is it?

Digital asset management (DAM) consists of management tasks and decisions surrounding the ingestion, annotation, cataloguing, storage, retrieval and distribution of digital assets i.e. digital photographs. In essence Digital asset Management refers to every part of digital photography after the photograph is captured and is stored in the camera.

The process that follows is some form of digital asset management. This amounts to the protocol for downloading, renaming, backing up, rating, grouping, and archiving, optimizing, maintaining, thinning, and exporting files. To expand further, the protocol defines the process or processes of how the digital assets are managed post shooting. ImgArchive provides a framework to support these processes helping automate many were possible.

Note, animations, videos and music are samples of media asset management are a sub-category of DAM. Media Asset Management (MAM).

Your DAM system is the way your images are known to you and possibly everyone else. The question is, is your DAM system enabling you to find your pictures easily when you need them. Are you using your time effectively in managing your pictures. Are you making the most out of your pictures. All these questions are dealt with, within the DAM practices. Along with this, are your digital assets safe from damage, theft or unintentional loss.

# The Idea of a Digital Image as an asset.

The definition of an asset? My way of thinking, from the point of view of a photographic image is: an asset is the raw photograph in the camera; this may have incurred considerable cost to capture. Therefore may be a costly asset that needs management in order to manage this asset so to gain maximum return on that investment.

In the IT and media world there are two widely accepted definitions for assets, both of which aren’t completely satisfactory. Both agree that a digital asset includes a digital file, but one definition says an asset is a digital file plus the rights to use it, which is fine, if you are the photographer, and the other definition states that an asset is a digital file plus a description of it. The so-called metadata. The first definition is more widely used in the context of assets that have a certain value on their own. For example, think of an MP3 file of a song from your favourite band. From a business perspective, it is useless as long as you don’t have the right to do something with it i.e., use it in a movie you make, sample it in your own song, or Anyone who has take. 

Saying all of the above, You may be just storing digital images for non-profit and for personal reasons, the importance of documenting personal images can be of great importance to you.   

In practice most photographers, this management strategy normally takes on a form not unlike managing physical assets for example: they are located in a safe place free from harm, they are organized, maybe shared with responsible people etc.

Setting out the rules of a DAM may be great way of clarifying what the practices you have in place systems and good starting point in order to describe DAM system you may want in the future. This also enables a discussion on how ImaArchive may fit in as a DAM system and DAM design goals. These are not hard and fast rules but common sense rules to manage your digital assets in a meaningful constructive way, most of which are standard practice in IT. These rules are described as follows, as well as how ImgArchive can support the implementation of these rules:

# An Overview of the DAM system

## Being organised

Can you find your digital images when you need them, or do you spent more time looking through endless folders on your hard drive? This can be even worse if you spent hours editing the image in Photoshop but can’t find the latest version.

Having an organised archive of images save time looking for an image or set of images. However the organisation of the images in the archive must be quick and easy otherwise it will not be done.

ImgArchive primary way of storing images is by date and time. Then enables attributes of the image to be stored with the image. This in DAM speak, this is metadata. Metadata is information about an image. This will be discussed later in the section on Metadata.

## Do No Harm

Never manipulate your original media, i.e. the original image or images. Once the original is changed there is no way to revert to the untouched original its lost forever. Always work on a copy of the original never the only copy of the original? ImgArchive supports versioning, when you want to make changes to an image in ImgArchive you check the image out of the archive into the workspace for changes, once the changes are made you then check the image back into the archive. The changed version will be the current image in the archive but the original will be preserved in the archive untouched as the previous version. Each time you make a change a new version of the image will be made.

If you wish to go back to the original or a previous version of the original the you can check it out into the workspace. The original is safe guarded along with any changes you made of versions of the original which in them selves may have had a number of hours invested in them.

The Workspace is just an area on the hard drive where images can be worked on. It’s best practice to work on one copy of an image at a time.

## Be Safe With Your Data

Digital images are made in fractions of a second, and similarly can be destroy or loose in the same time. This can happen in a number of ways and the best protection is to use the 3-2-1 rule of duplicating your data. This is standard practice in the IT Industry for mitigating the loss of digital assets.

3 Keep at least three copies of your data: your primary copy and two backups.

2 Keep your copies on two different, physically separate media. One set of files will likely be on your computer hard drive. Keep your two copies separated, each backed up to different media (external hard drives, USB flash drives, or cloud storage services).

3 Keep one copy of your images offsite. Some people use a system of rotating two external hard drives, swapping out one hard drive each week or each month, depending upon how frequently you add data. I use USB hard drives and store them away from main archive. A cloud storage service is also a good way of keeping a copy offsite, however some cloud storage does not store RAW image data or metadata. A non photographic cloud storage site may be better as your image data will be just that, and the cloud site will not try to manipulate your image data in any way

ImgArchive automatically supports two backups. In the near future will also support archive mirroring to a remote site.

## Back Up Supporting Documents

As part of the DAM process is to create metadata on you images. Metadata is the descriptive information about your images files (data about your data). Digital asset management systems rely heavily on metadata, as it’s critical for searching, retrieving and managing your digital assets. This is because the archive needs to know many aspects about an image in order to find an image or set of images from a search criteria. For example just looking at an image will not allow the system to associate the image with the Walkers wedding. However tagging the Walkers wedding photos with Walkers-wedding will.

At its core ImaArchive uses the base Operating Systems file system in order to store image in an organised file structure. Metadata associated with each image is also stored in an organised file structure with the addition of an optional SQLite database.

## Regularly Check, Validate and Update Your Archive

The way most archives are used, images within them may only be accessed infrequently but does not diminish the importance of the image, you expect the image to be accessible and intact. Looking in your file directory and seeing an organized list of all of your image files may be reassuring, but don’t be fooled. Just because the image file shows up in your file directory does not mean that the file is usable. The file could be corrupted or the storage medium could also be corrupt or damaged.

## Create a long term archival storage of the Archive

Another way of safeguarding the archive, periodically update an archival copy of the archive using Blu-ray or archival tape. One of the major benefits of Blu-ray as a data archiving solution is the format’s durability. Traditional hard disk drives are prone to hardware failure as their components inevitably diminish over time. Blu-ray discs, meanwhile, are much sturdier, ensuring that this information will be available for years to come. If you use archival quality Blu-ray disks then some manufactures specify a 100-year life of the disk. ImgArchive makes burning Blu-ray easy, given the size of the Bly-ray you are using ImgArchive will create a set of volumes. Each no larger than the maximum size of your Bly-ray disks. Each volume will have a number this is its volume set number. On recovering the archive, the volumes will be read back in the same order to recreate the archive.

## Never Use Your Archive for a Backup.

An archive is the place where one copy of each version of an image are stored. This usually means that your archive contains the original, untouched image file, and possibly the final working versions of the edited image files derived from the original or originals. These may be your originals which may be irreplaceable, but also may contain versions that may of taken some time to edit and get them just how you like them. If the archive is lost how would you recover?

Luckily ImgArchive contains the ability to maintain two online backups. This may take space on a second and possibly a third hard drive but the cost of hard is small compared to the lost of the archive. One possible way of using the two online backups is to have one backup on a second drive and one backup going to a USB hard drive this can be taken of the system a night and taken off-site, or better have a number of USB hard drives and plug a different one in each day. ImgArchive will update the missing data from the last time it was attached so by rotating USB hard drives you will have two up-to-date backups and plus a set of almost up-to-date backups.

### Long term archival storage of the Archive

One way of safe guarding the archive is to periodically update an archival copy of the archive using Blu-ray. One of the major benefits of Blu-ray as a data archiving solution is the format's durability. Traditional hard disk drives are prone to hardware failure as their components inevitably diminish over time. Blu-ray discs, meanwhile, are much sturdier, ensuring that this information will be available for years to come. If you use Archival quality Blu-ray disks then some manufactures specify a 100 year life of the disk. ImgArchive makes burning Blu-ray easy, given the size of the Bly-ray you are using ImgArchive will create a set of volumes. each no larger in size than the maximum size of your Bly-ray disks. Each volume will have a number this is its volume set number, on recovering the archive the volumes will be read back in the same order to recreate the archive.

## Regularly Check and Update Your Archive

The way most archives are used, images within them may only be accessed infrequently but does not diminish the importance of the image, you expect the image to be accessible and intact. Looking in your file directory and seeing an organized list of all of your image files may be reassuring, but don’t be fooled. Just because the image file shows up in your file directory does not mean that the file is usable. The file could be corrupted or the storage medium could also be corrupt or damaged.

## Archive migration 

As more images are added there will be a point where the archive storage will be full and you will be forced to change media.  ImgArchive allow you to do this easily.

[<< Back](./User-Guide.md)
