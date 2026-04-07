# Command line client reference

The command application “iaarch.exe” is the primary command-line client interface to ImgArchive. This interface is used to manage the control of images going in and out of the archive software. It has a rich set of subcommands that “add/import” images to the archive and “export” images out of the archive, In addition manages the controlled modification of images using the “check-in/check-out” command set.
Note:
The administration of the archive is carried out by the iaadmin command-line
interface.

Each sub-command will have a set of arguments used to control the sub-command in its behaviour. these are detailed in each of the sub-command sections. In addition, A number of sub-commands contain common arguments that have the same meaning across the application. see [common arguments](https://idk-solutions.atlassian.net/wiki/spaces/ImgaWiki/pages/1916370965).

These are common ImgArchive commands used in various situations-

1. [IMPORT](./IMPORT-import-new-images-to-the-archivet.md) – import new images to the archive.
2. [CHECKOUT](./CHECKOUT-Checkout-i0mages-from-archive-to-workspace.md) – Checkout images from archive to workspace.
3. [CHECKIN](./CHECKIN-Checkin-images-from-workspace-into-the-archive.md) – Checkin images from workspace into the archive.
4. [UNCHECKOUT](./UNCHECKOUT-Un-checkout-images-from-workspace-into-the-archive.md) – Un-checkout images from workspace into the archive.
5. [GET](./GET-Get-images-from-archive-to-User-Spaces.md) – Get images from archive to workspace.
6. [DELETE](./DELETE-Delete-images-in-the-archive.md) – Delete images in the archive.
7. [UNDELETE](./UNDELETE-Undelete-images-in-the-archive.md) – Undelete images in the archive.
8. [EXPORT](./EXPORT-Export-images-from-archive-into-a-destination-folder.md) – Export images from archive into a destination folder.
9. [PROP](./PROP-Manage-image-properties.md) – Manage image properties
10. [METADATA](./METADATA-Show-Metadata-properties.md) – Show Metadata properties
11. [TEMPLATE](./TEMPLATE-Manage-metadata-templates.md) – Manage metadata template
12. [STATUS](./STATUS-shows-the-check-inout-status-for-the-images-selected.md) – Show check in/out status
13. [HISTORY](./HISTORY-Shows-the-check-in-status-history-for-the-archive.md) – Shows the check-in status history for the archive
14. [JOURNAL ](./JOURNAL-Displays-the-contents-of-a-journal.md)- Displays the contents of a journal
15. [SHOW](./SHOW-Show-details.md) – Show details
16. [LOG](./LOG-Show-logs.md) – Show logs
17. [SCAN](./SCAN-Scan-the-file-system-for-images-that-can-be-imported-into-the-archive.md) - Scan the file system for images that can be imported into the archive
18. SEARCH - Indexing and searching the photo metadata
19. [ABOUT](./ABOUT-prints-this-version-information.md) – prints this version information
20. [HELP ](,/HELP-On-ImgArchive-client.md)- On ImgArchive client.

Return codes:

> 0 Success
> 1 Warnings
> 2 Errors
> 3 Fatal