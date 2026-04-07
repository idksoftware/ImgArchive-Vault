# GET – Get images from archive to User Spaces

# Name

***iavault get <options>***

## Synopsis

iavault get [-q | –quiet] --user-space=[workspace | pictures | www] [--scope=[]] --comment=[--force]

## Description

This command gets images into the user spaces. In the case of the workspace, without checking out. This allows users to get images out of the archive into the user space to browse images and in the case in case of the workspace editing them. Images that are selected for editing can be checked out in the normal way. If images in the workspace have been edited before being checked out, the checkout will not replace those images checkout will complete but warn you that the image in the workspace is not the same as the one in the archive. This is to stop accidental over-writing images that have been edited before before being checked-out. 

The carry out a clean checkout you need to use the force option, to force images to be over-written. this will lead to the edits to be lost.  To Clean up can be used to remove all unedited images.

## Options

–out :

Output type: text, xml, json or html.

--scope

This allows you to match only the images you need to be fetched or got from the archive. only the images that match the scope criteria will be fetched. see [Image Addresses and Address scope](https://idk-solutions.atlassian.net/wiki/spaces/ImgaWiki/pages/1881440257).

## Syntax

 

out=[plain] | [xml] | [json] | [html]

–file :

output file name. 
Syntax:

file=<filename>

--scope=all

Gets the complete archive into the indicated user space.

 