# iascrub - Data Scrubbing Tool

This is the command line reference of the Data Scrubbing tool “iascrub.exe”.

iascrub - is a command-line tool designed to refresh image file that have been saved on disk for a period of time. 

What is a Scrub?

A scrub in is a maintenance operation that involves the following:

During a scrub, the iascrub tool scans all the data in the image folders and verifies checksums to ensure that the data is intact and has not been corrupted. In addition it reads each image file ensuring it can be read without errors. Optionally, iascrub can refresh the image files by reading then writing the file back to the disk. This process helps identify any data integrity problems that may have arisen due to hardware issues or other factors. 

1. Detection of Silent Data Corruptions: Scrubs are essential for detecting silent data corruptions, which are errors that occur without any immediate indication of failure. By regularly performing scrubs, iascrub can catch these issues early, allowing for corrective actions to be taken before data loss occurs. 
2. Scrubs identify data integrity problems, detect silent data corruptions caused by transient hardware issues, and provide early disk failure alerts.

## Name

iascrub <sub-command> <options>…

## Synopsis:

iascrub <sub-command> <options>…

[ archive <options> …] | [ sync <options> …] | [ purge <options> …] | [ validate <options> …] |

[ allow <options> …] | [ about <options> …]

The list below details the sub commands **iascrub** will except as a second argument.

1. [config](./iascrub-configure.md) – Configure scrubber working parameters
2. [show](./iascrub-show.md) – Show how the tool is configured.
3. [run](./iascrub-run.md) - Runs the scrubbing tool
4. [validate ](./iascrub-validate.md)– Validate commands
5. [about](./iascrub-about.md) – prints the version information
6. [help ](./iascrub-help.md)- On Administrative Housekeeping commands