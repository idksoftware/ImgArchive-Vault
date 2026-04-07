# Getting images into the archive

In order to get (normally) original images into the archive you must Import them. The DAM term is Ingestion. ImgArchive allows you to import images in many ways so to support the growing number of options cameras have to shoot and manipulate those images while on the camera memory card.

In order to add or import images to the archive one important piece of information needs to be known, that being the source folder of the imported images. This may be a camera connected by USB or a folder with images contained within it, or a folder on the computers hard drive.

# The import process

Importing images need to processed in a number of steps so that the image can be full integrated into the Archive. This process is described and explained in the follow sections.

In order to add or import images to the archive one important piece of information needs to be known, that being the source folder of the imported images. This may be a camera connected by USB or a folder with images contained within it, or a folder on the computers hard drive.

## Image File Selection

Most of today’s cameras can shoot a number of formats, but these are grouped into two types, RAW and Picture formats normally JPG’s. A growing number of cameras can now shoot a mixture.

RAW images are those that are direct from the cameras image array with little or no processing by the camera. These are normally proprietary belonging to the camera makers own format. Picture formats are those formats that applications can view directly because they follow a industrial standard that is widely recognized. These are JPG, TIFF, PNG, BMP etc. with well known file extensions

The camera manufacturer when introducing a new RAW file format will give it a unique file extension. For example Nikon raw files have the extension ".nef.

ImgArchive contains a list of all Picture and RAW file extensions. This list is loaded before the import process so only Image Files that match those in the list will be included in the import. 

## Image File De-Duplication

We want to avoid duplicating images in the archive i.e. having two or more images that are identical. To prevent this, all images are finger-printed. When an image is considered for inclusion, its finger-print is matched. If it matches, the image is a duplicate.

If the image is not a duplicate then its finger-print is saved in the archive so the same image is found in future imports it can be rejected.

Deduplication tests images for uniqueness. If an image is not unique, it duplicates one already in the archive. For example, some images may have been imported in an earlier set.

The probability of just two finger-prints accidentally being the same with different images is approximately:  **1.47\*10-29**

That is 1.47 followed by 29 zeros. The number of zeros in a billon is 9.

## Metadata

Metadata is information about the image taken, such as speed, aperture, ISO, location, and photographer etc. All these are the Metadata.  Metadata is very useful a finding and cataloging images or groups of images in the Archive. the the downside is adding it to the Archive is time consuming.

Some Metadata is duplicated across all images such as you the photographer if you are the only photographer using the archive.  Other Metadata may be over the period of the shoot, say holiday photos in Cornwall for example, and lastly some may be to the individual image. As part of the Import process automating as much as possible is a plus thus, saving time in the future.

### EXIF Metadata

Almost all images have Metadata embedded in the image file called EXIF.

Exchangeable image file format (officially Exif, according to JEIDA/JEITA/CIPA specifications) is a standard that specifies the format for images used by digital cameras (including smartphones ), and other systems handling images recorded by digital cameras.

During the Import process it is prudent to extract this information into the Archive.

Historically digital cameras only shot JPG formatted images. However as cameras progressed camera manufacturers started using proprietary RAW image formats. This meant, proprietary reader needed to be employed to read the EXIF information out of RAW images.

ImgArchive contains a basic EXIF reader for reading picture format images such as JPG. However it can not read most RAW formatted images.

To overcome this, external readers can read RAW formatted image files. You can set these up during configuration or anytime before the import process starts. They replace the internal reader. A popular EXIF reader application is ExifTool by Phil Harvey, Itis regularly updated and is available for free at [exiftool.com](http://exiftool.com/). This is supported by ImgArchive.

 ImgArchive deals with duplicated metadata in a using Templates.

### Metadata Templates

As mentioned above, Metadata maybe duplicated across all images.  Other Metadata may be over the period of the shoot, lastly some may be to the individual image. ImgArchive helps adding Metadata by automating the items that are duplicated by using a Metadata templates.

These are in two levels, the first being the Base template and the second being the Current.

## File Renaming

This is a feature relates to renaming the image from the the original. The reason is two fold,

The first is a required part. When images are moved into a day folder it must be unique in that folder otherwise it will overwrite the previous image. So to stop such clashes, the second image file must be renamed. 

The second part is optional.  This enables you to configure image re-naming. normally the image file name archived is the one created by the camera at time of shooting. These are something like DSC4369.jpg. The DSC stands for Digital Still Camera this is defined by EXIF. the problem with this file name is that it does little to define the origine of the images. re-naming to something like the date taken or a sequence number that ts used by the achive.

 

 

 

 

 

 

 

### Supporting RAW and Picture formats.

ImgArchive contains a list of all the Image type extensions both pictures and raw that are image types in a configuration file. When Image Archive starts it loads this file. ImgArchive as part of the import process it scans the file system looking for image files with an extension that matches one in the list. if found is added to a list to be imported. 

The Allow command allows to add those new formats see  [Image Types allowed into the archive](https://idk-solutions.atlassian.net/wiki/spaces/ImgaWiki/pages/1728905229)

## The Import process

Once the import list is is complete ImgArchive then processes each image file in a number of stages.

### The First Stage

The first stage is extracting the EXIF information and checking if the file has already been imported into the archive. If the check finds that the image Has been already imported then the duplicate is rejected.

**How duplication checking is achieved** -This duplication checking is carried out by using cryptographic checksums of each image imported into the archive. If two images have the same cryptographic checksums then it is cryptographically unlikely that the two images are not the same.

**Basic Metadata generation using the EXIF information** - ImgArchive creates a metadata file containing Information about each of the archived image using . The source of this information can be from a metadata template, Or by reading the EXIF information.

 

 

**The File Structure** - The next step is to archive the images into a date organised file structure. This structure is very much like the structure you see in a phone gallery, Flickr also uses a similar date organised structure. The image capture date from the EXIF is used as a key. All images with the same day-date are stored in a folder. creating a set of folders in a year folder. The Archive is thus a simple year/day structure which is easy to understand and manage.

While carrying out this process image archive will check that there is no file name clashes. This will happen if two image file names have the same day date. In order to stop the second image overwriting the first, the second, will be automatically renamed with an index making it unique to that particular day.

**Image Re-naming** Optionally ImgArchive allows you to rename images in order to give them a more user friendly name.

**Backing-up** - Once archived the next stage is to optionally backup images to one or more online backups and optionally cloud storage backup.

Online storage is normally carried out using local or network drives which generally Have a fast access and write speed. Cloud storage on the other hand are generally much lower. To cater for this, cloud storage is generally backed up using a second background process which can then be paused and restarted if the Internet connexion goes down while the backing up process is being initiated.

**Validation** - This is the last step in the import process where All the backups Are validated against the master Thus making sure that all of the Image copies are identical and have been processed without Inconsistencies.

## Accessing the Archive

ImgArchive Aims to protect your images as far as possible. One such way is to structure the archive into two parts The first part Is the vault. This is where the primary copy of your images are kept.

The second part is the user area or space. This space is where you have access to your Images. Whenever required you can request images to be copied from the vault into this space This can be a complete copy of all the images held in the vault or part of it.

If at any time images in the user space gets damaged, deleted, corrupted or whatever, a fresh copy can be brought from the vault overwriting, the damaged or deleted copy in the user space. Thus safeguarding your images.

## The Vault

As mentioned before the vault is where the primary copies of your images are kept. Therefore special measures are taken to ensure the consistency of these images.

**Validation** - When images were imported into the vault a cryptographic checksum was taken of each of the images plus each of the metadata files associated with each of those images and stored in a separate checksum file.

At any time, The images stored in the vault can be compared against the checksum stored in the checksum file. If any of these differ then more than likely the image or metadata file is corrupted. If this is the case then the vault can be repaired by taking one of the images from the backup and use to overwrite the damaged image. Note that the backups contain checksum files to make sure the backups also can be validated.

**Image Version control** - Never manipulate your original media, i.e. the original image or images. Once the original is changed there is no way to revert to the untouched original its lost forever. ImgArchive supports versioning by coping images out of the vault into a user defined Workspace area for editing images. When you want to make changes to an image in ImgArchive you check the image out of the archive into the workspace for changes, once the changes are made you then check the image back into the archive. The changed version will be the current image in the archive but the original will be preserved in the archive untouched as the previous version. Each time you make a change a new version of the image will be made.

If you wish to go back to the original or a previous version of the original the you can check it out into the workspace. The original is safeguarded along with any changes you made of versions of the original which in them selves may have had a number of hours invested in them.

The Workspace is just an area on the hard drive where images can be worked on. It’s best practice to work on one copy of an image at a time.

[<<Back](./Getting-started.md) 