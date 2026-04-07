# The Workspace

The workspace is the active area where you can view and edit images you have added to the archive. This is normally automatically populated with new images when you import images into the archive.

Images in the workspace will be read only initially will show as added. 

The workspace mirrors the repository in the way it stores images so consists of a date partitioned file system. The exception is that each folder contains a “.imga” folder. This folder contains housekeeping information on the images in the partition. See Workspace housekeeping information.

**Editing an image**

The first time an image is checked out that image is marked as such in the archive and is changed from read-only to read/write access. This will enable you to edit the image.

Once you’ve edited the image and wish to check the image back into the archive you can do this at any time and if the file has actually been changed the archive will save the changes as a new version of the original file. At this point it’s status would have changed from added to checked in. By the way we check out an image status will also be changed to checked out.

Workspace is organised into the same partition file system as used in the repositories. That is years and then months/days. 

The image in this area initially will be read only. To edit it, it will normally be checked out for editing. This informs the archive that it may be edited. If the edits need to be undone then it can be un-checked out. This results in the copy in the shadow area being copied over the one in the primary storage area thus undoing the changes. If on the other hand the edits need to be made permanent then the image needs to be checked-in in this case the original image in the shadow storage area will be renamed with a version number encoded into the filename and a copy of the edited image will be copied into the shadow storage area. It this way versions the original are built up giving the ability to return to previous images

**Workspace and shadow storage areas**

The archive contains two copies of the image when the image is first added to the archive one copy will be in the workspace storage area and the other will be in the shadow area. Users will only normal be able to access the workspace storage area.

**Editing an image**

The image in this area initially will be read only. To edit it, it will normally be checked out for editing. This informs the archive that it may be edited. If the edits need to be undone then it can be un-checked out. This results in the copy in the shadow area being copied over the one in the primary storage area thus undoing the changes. If on the other hand the edits need to be made permanent then the image needs to be checked-in in this case the original image in the shadow storage area will be renamed with a version number encoded into the filename and a copy of the edited image will be copied into the shadow storage area. It this way versions the original are built up giving the ability to return to previous images.

 

 