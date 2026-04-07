# INIT – Initialises the ImgArchive environment

# Name

isadmin init <options>

## Synopsis

isadmin init [-q | –quiet] [–user <all | local>] [–set-home-env <yes | no>][--force]

[ –archive-path <path>][ –workspace-path <path>][ –master-path <path>]
[ –derivative-path <path>][ –catalogue-path <path>][ –picture-path <path>]
[ –www-image-path <path>]

##  Description

The command **init** Initialises the ImgArchive Environment so ImgArchive can be used by users. **init** creates the framework of operational folders that ImgArchive needs to operate. In addition, **init** creates a set of operational template files and configures some of these files to reflect the given ImgArchive Environment. After **init** completes ImgArchive is ready to be used.

ImgArchive can be installed with administrator privileges to give all users access to the ImgArchive environment, or to a single user with or without administrator privileges. How the ImgArchive is configured can vary. There are two default configurations one when the user is logged on as single user. And the other as administrator. Single user is limited to the folders the single user has access. logged on as administrator with administrator privileges gives the installation much more scope, ImgArchive can be installed both as a single user or all user installation.

**init** provides a **user** option to determine which mode ImgArchive will be install, local or all. The modes translate to single user (local) or all users (all).

--user=<local|all>

iaadmin init --user=local|all <option>

The Installed environment can be changed using command line options or environment variables. This allows a more flexible use of disk resources. The repositories can take a large amount of disk space when used to store a large archive. The following folders can be changed to to make a more flexible ImgArchive Environment. these are detailed below: however this will also depend in administrative permissions.

### Force option

Normally this command is used to create an initial archive configuration. This command will fail if the command is run with the a valid configuration in place. The initial configuration can be over-written by using the **force** option. This option allows the **init** command to override any configuration ready in place. this is useful when something is accidently deleted an needs replacing.  

## ImgArchive Home

ImgArchive home is the location where the configuration files are located. The configuration files then contain the location of the archives and operating data crucial to the correct running of the archive.

The location of Imgarchive can be defined by ether by default location or by defining the IMGARCHIVE_HOME environment variable.

How this are defined will depend on the Operating System and will be detailed on the following sections.

## Defined resource folders

These resource folders contain the archive system resources such as the master repository etc. These folders are divided into two, repositories and catalogs and are detailed below:

Repositories:

- Master folder
- Derivative folder

Catalogs:

- Workspace folder
- Picture folder
- WWW image folder

## Default Environment

If folders are not specified then a default environment with default folders will be used. These will be default environments that the “init” command will install with no arguments on the different operating systems. The Default environment will also depend on the user, using the ‘init’ command, normal users or administrator users.

In the case of normal users then the environment will be restricted to the users home location. This in turn will depend on the base operating system see below:

### Windows

In the windows environment ImgArchive can be install as a User or as All Users. Normally there will only be one user with admin permission. This will mean that almost all of the machine will available to locate folders. 

The first folder that needs locating is the root install folder. This is the applications home folder and is where the configurations and system folders will be located.

There are methods this folder can be located. the first is by environment variable and the second located as a system default.

#### Local user mode

Local users will have a local home installation, installed under their user home folder. The system environment variable $USERPROFILE will be used to reference this home folder. For example: a user named fred will have the system environment variable $USERPROFILE referencing “/home/fred”. the local installation will be installed under /home/fred/lmgachive and /home/fred/.local/share/imgarchive. Unless directed to do otherwise using the environment variable IMGARCHIVE_HOME

These default folders are as follows:

- Archive folder – $USERPROFILE/.local/share/imgarchive
- Master folder – $USERPROFILE/.local/share/imgarchive/master
- Derivative folder – $USERPROFILE/.local/share/imgarchive/master
- Workspace folder – $USERPROFILE/imgarchive/workspace
- Picture folder – $USERPROFILE/imgarchive/workspace
- WWW image folder – $USERPROFILE/imgarchive/workspace

#### All user mode

The root user will have root permissions that allow the software to be installed almost anyware on the linux machine. However for normal users to access these locations then, the permissions need to be tweaked.

The normal default system wide location for applications is /var/opt

- archive folder - $ProgramData/idk-software/imgarchive
- workspace folder - $USERPROFILE/imgarchive/workspace
- master folder - $ProgramData/idk-software/imgarchive/master
- derivative folder - $ProgramData/idk-software/imgarchive/derivative
- picture folder - $USERPROFILE/imgarchive/picture
- www image folder - $USERPROFILE/imgarchive/www

### Linux

The command ***init*** is the normal way of installing ImgArchive on a linux machine. It is very simple from the command line. As linux is historically an Operating System that uses the command line ImgArchive is no exception. 

Linux can be installed as a local user or as root. the default Environment will change due to the permissions granted to the user carrying out the installation.

#### Local users mode

Local users will have a local home installation, installed under their user home folder. The system environment variable $home will be used to reference this home folder. For example: a user named fred will have the system environment variable referencing “/home/fred”. the local installation will be installed under /home/fred/lmgachive and /home/fred/.local/share/imgarchive. Unless directed to do otherwise using the environment variable IMGARCHIVE_HOME 

These default folders are as follows:

- Archive folder – $HOME/.local/share/imgarchive
- Master folder – $HOME/.local/share/imgarchive/master
- Derivative folder – $HOME/.local/share/imgarchive/master
- Workspace folder – $HOME/imgarchive/workspace
- Picture folder – $HOME/imgarchive/workspace
- WWW image folder – $HOME/imgarchive/workspace

#### Root User

The root user will have root permissions that allow the software to be installed almost anyware on the linux machine. However for normal users to access these locations then, the permissions need to be tweaked.

The normal default system wide location for applications is /var/opt

- archive folder - /var/opt/imgarchive 
- workspace folder - /home/imgarchive/workspace 
- master folder - /var/opt/imgarchive/master
- derivative folder - /var/opt/imgarchive/derivative
- picture folder - /home/imgarchive/picture 
- www image folder - /home/imgarchive/www

## Options

--force - Forces the updating of configuration. 
–archive-path - Location of the archive root folder. This will be where most of ImgArchive installation will be installed

–workspace-path - Location of the workspace folder.

–master-path - Location of the master repository folder.

–derivative-path - Location of the derivative repository folder.

–catalogue-path - Location of the picture folder.

–picture-path - Location of the picture folder.

–www-image-path - Location of the www image folder.

Note: The backup folders  are configured using the Master

Environment variables
Environment variables can be

## Examples

C:\Users\Iain Ferguson>iaadmin help init

iaadmin Tool provides administration house keeping support for ImgArchive.

NAME:
init

SYNTAX:
isadmin init [-q | --quiet] | [--user <all|self>][--force]
| [--set-home <yes | no>] | [ --archive-path <path>]
| [ --workspace-path <path>] | [ --master-path <path>]
| [ --derivative-path <path>] | [ --picture-path <path>]
| [ --picture-path <path>] | [ --www-image-path <path>]

Description:
Create ImgArchive's working enviroment

OPTIONS:

--archive-path :
location of the archive root folder.

--workspace-path :
location of the workspace folder.

--master-path :
location of the master repository folder.

--derivative-path :
location of the derivative repository folder.

--picture-path :
location of the picture folder.

--www-image-path :
location of the www image folder.

--set-home :
Set the Home environment variable.

--force :
Forces over-write

--user :
Sets user to local or all users.