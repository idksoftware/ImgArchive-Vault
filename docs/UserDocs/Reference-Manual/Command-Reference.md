# Command Reference

#### This contains the command reference for the general command line operation of ImgArchive. 

[What are command line tools](./What-are-command-line-tools.md)

[Command line client reference](./Command-line-client-reference.md)

[Administrative Housekeeping reference](./Administrative-Housekeeping-Reference.md)

[Remote Backup tool reference](./Remote-Backup-tool-reference.md)

[General Arguments](./General-arguments.md)

[Tool Reference](./Tool-Reference.md)



The functionality provided by the command line interfaces are split between a number of commands with distinct uses, these are as follows:

- Administrative housekeeping function such as maintaining the repositories
- Client based functions such as day-to-day user orientated functions for example, adding new images.
- Utility functions that support the archive.

### Administrative housekeeping functions

An administrative housekeeping tool "iaadmin.exe" is provided for Administrative housekeeping.

This administrative housekeeping will be done infrequently compered with the normal day-to-day user tasks and possibly the administrative housekeeping may be done by an other person. Added to this, may also need administrative privileges.

#### Utility functions

This is a set of command line tools that perform functions that are out side the normal operation of normal archiving tasks such as remote backup and archive contents validation.

### Client based functions

Client based functions such as day-to-day user orientated functions is provided by “iavault.exe”. All common archiving functions will be performed using this tool .

## Reference documentation

1. For the administration of the archive you will need the ImgArchive - [Administrative-Housekeeping-Reference](./Administrative-Housekeeping-Reference.md).
2. For the normal day-to-day user tasks you will need the ImgArchive - [Command line client reference.](./Command-line-client-reference.md)
3. Remote storage is managed by the Remote Backup utility tool “iarbk.exe”. This has a command line reference -  [Remote Backup tool reference](./Remote-Backup-tool-reference.md).

## Command-Line Syntax Key.


The following table describes the notation used to indicate command-line syntax.

- Text without brackets or braces - Items you must type as shown
- (<)Text inside angle brackets(>) - Placeholder for which you must supply a value
- [Text inside square brackets] - Optional items
- {Text inside braces} - Set of required items; choose one
- Vertical bar (|) - Separator for mutually exclusive items; choose one
- Ellipsis (…) - Items that can be repeated

## Program Exit Codes, Imgarchive Exit Codes and Return Codes

An program exit code or exit is a number that is returned by an executable to show whether it was successful or not. This is also sometimes called a return code, or in some cases, an error code, although the terminology here may be slightly different. Imgarchive Exit Codes, will be the same as the program exit code except it optionally output to along with a return code.

#### General options

Almost all of commands need a regular means of outputting the results of commands being used. In simple terms this may just means whether the command was successful or not. If the command line is being executed by another application then this application may need the output to be formatted in a specific way without other output confusing the interface.  For example: some applications may read the output in XML, other web type application may need JSON. These general option may also control the output of journals or log files so you the user or an application can analyse how an command performed.  

These general options  are detailed in the section below:

[General arguments](General-arguments.md)

### Program Exit Codes and Imgarchive Exit Codes

ImgArchive uses the meaning of the exit code to be the number returned by the executable, in this case, for example: “iaarch.exe” or “iaadmin.exe”.

Applications will exit with the following:

- 0 = Success - the application returned successfully with no errors or warnings. 
- 1 = Warnings - the application run successfully, however some operations generated warnings.
-  2 = Errors - the application run successfully, however some operations generated errors and possibly warnings.
-  3 = Fatal - the application failed to execute successfully.

The Program Exit Codes may be hidden but under windows power shell you can use:

```
echo Exit Code is $LastExitCode
```

or in command prompt:

```
echo Exit Code is %ERRORLEVEL%
```

The Imgarchive Exit Codes will be the same as the Program Exit Codes but optionally printed to the screen with the return code and text message.

### Return Codes

Is a code that is return by the application to indicate the reason for application not to return successfully. This is output on the console or terminal the application was executed.

The general text is as follows:

exitcode:returncode - description of warnings, errors or failure.  

The exit code is replaced by the following text

- Success 
- Warnings
- Errors
- Fatal

For example:

Fatal:4005 - Invalid command: blar

 

ax Key

The following table describes the notation used to indicate command-line syntax.

Text without brackets or braces - Items you must type as shown

(<)Text inside angle brackets(>) - Placeholder for which you must supply a value

[Text inside square brackets] - Optional items

{Text inside braces} - Set of required items; choose one

Vertical bar (|) - Separator for mutually exclusive items; choose one

Ellipsis (…) - Items that can be repeated

### Command-Line Syntax Key

The following table describes the notation used to indicate command-line syntax.

Text without brackets or braces - Items you must type as shown

(<)Text inside angle brackets(>) - Placeholder for which you must supply a value

[Text inside square

 [<<Back](./Reference-Manual.md)
