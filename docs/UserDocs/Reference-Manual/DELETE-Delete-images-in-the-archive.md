# DELETE – Delete images in the archive

# Name


***iavault delete <options>***

## Synopsis


iavault delete [-q | –-quiet][--silent] [--scope address-scope] [--all] [--force]

 

delete --scope=2016-12-25

## Description


This command allows you to delete images from the archive. Images are removed from the User space but only marked as deleted in the Vault.


In addition the metadata document is also marked as deleted by changing it's extension to $$$. This ensures that the image is not indexed by text based search engines.

This allows deleted images to be reinstated using the Undelete command.
see Undelete command.

By default, only the current image version is deleted. If the image is the original.

If all the versions are to be removed then the --all flag can be used.

Images need normally to be checked-in. If checked-out then the delete will fail. Using the --force option will force an image file to be deleted independently of state.
 

## Alternate Names

None.

Changes

Working copy, repository

Accesses Repository

Yes

## Options


## Examples