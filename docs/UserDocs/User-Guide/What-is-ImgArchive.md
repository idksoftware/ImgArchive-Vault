# What is ImgArchive

You can shoot digital images in microseconds, However, the down side is that they can be lost in a microsecond as well. The up side is you can make absolutely identical copies. So, the key to safe guarding digital images is to make copies. Never modify the original, and make versions of the original when editing and lastly  put the copies on different media devices and physical locations thus making it even harder to lose important images. 

ImgArchive is a tool to manage and safeguard an archive of digital images by managing copies of the archive. 

ImgArchive is split broadly into two parts:

1. A digital image vault, to contain the images in a logical organised, order so images are easy to find and possibly, more importantly safeguard them from harms way.
2. A user space that enables users to edit and view the images contained in the archive. This space is largely uncontrolled and images can be deleted or damaged etc. However, ImgArchive can both  check the user space for damage and replace the damaged images quickly and effectively using images from the digital image vault.

## The Digital Vault

The Digital Vault contains both the originals and versions of the originals. The Digital Vault only allows copies of these originals images and versions out of the Vault to be used for viewing and editing. Normally these will be copied to the user space however can be exported out of the archive. 

This copy-only paradigm also applies to versions of the originals. If you make a copy of an original, modify that copy and place the new version of the original back in to the Vault, the vault will not overwrite the original but saves this new modified copy as the current version of the original. The original will be left untouched. versions of the original will also be copied and any new version will again be made into the current version, thus, a set of versions will be created from the original.

This allows a flexible way of modifying images in a non-destructive way. In addition, the Vault manages backups of the originals and any versions of the original thus if any harm comes the the master images then there can be a least one if not two backups of the images contained in the vault.   

## The User space

This spaces is where the images are made available to the you the user. This space is divided into three areas.  The Workspace, Pictures space and web space. The web space in this early version is not implemented but will be in future ImgArchive versions therefore not detailed at the moment.

**The Workspace** is where the images are made available for editing. The Workspace is area that images can be placed from the Vault in order for images to be edited in a controlled environment. Once the edit of an image is complete can be placed in the vault as a new version of the original. The images in the workspace can be viewed directly however image in the vault remain hidden.

**The Pictures space**

**The WWW space**

## ImgArchive Tools

The ImgArchive comprise of a set of tools.  These controls both a digit vault and the work space and all aspects of ImgArchive.

There are five main function areas that the ImgArchive command line tools must cover, these are as follows:

- Getting images into the archive
- Editing an image or set of images and get those images back into the archive as a new version.
- The Export function used to select images for export (copied out) of the archive.
- Documenting images and making images available and easy to find.
- Maintenance actives to maintain the archives effectiveness.
- Support for backing-up
- Validating the contents of both Vault and Workspace.
- Repairing damage to the both Vault and Workspace.

Details of all these tools can be found in the [Command Reference](../Reference-Manual/Command-Reference.md) 

# What ImgArchive is Not

Being command line tools ImgArchive is a non-graphical product. However can be integrated into a graphical application.  It is designed around the as philosophy as source code control software such as GIT or SVN. however ImgArchive implements exclusive locks. This means only one copy of an image can be edited. this reflects the way images are normally edited. If two people edit the same image they will over-right each others changes. This may not be the case with source code however even in this case there can be conflicts.

ImgArchive does not manipulate images such as tools like imagemagick or read Exif out of RAW images. However, ImgArchive provides hooks to allow these tools to be integrated with ImgArchive. 

ImgArchive does not use a database to store Metadata however ImgArchive has SQLite integrated to allow searches of the Metadata.

[<<Back](./Introduction.md)
