# SHOW – Shows the configuration ImgArchive

# Name


iaadmin show <options>

## Synopsis


iaadmin show [-q | –quiet][--setting=] | [--allowed=<Option>] | [--env=<Option>] 

## Description

This option allows you display the configuration of the archive. This is split into sections, the top level sections are as follows:

- [Setting](./Iaadmin-Show-Settings.md)- These section display how the archive is setup.
- [Allowed](./Iaadmin-Show-Allowed.md)- This displays what image types can be imported into the archive.
- [Env ]()- This displays the current environment used be the archive
- [Template](./Iaadmin-Show-Template.md)- This displays the bulk metadata templates used when importing image or creating new versions of an image.
- [Cloud backup](./Iaadmin-show-cloud-backup.md) - This displays the configuration of the Cloud backup and it's status


The command “show” displays the current configuration of ImgAchive.

The options are:

--setting=<Option>

--allowed=<Option>

--env=<Option>

--format-type=[ human | xml | json | html ]	

--file=<file path>

## Syntax

isadmin show [--setting=<Option>]
Option = <[general] | [logging] | [network]
| [folders] | [master] | | [derivative] | [backup] | [exiftool]

 

## Examples

General

```
iaadmin show --silent --setting=general --format-type=xml
```

Output

<?xml version="1.0" encoding="UTF-8"?>
<GeneralSettings>
<Loglevel>STATUS</Loglevel>
<Consolelevel>STATUS</Consolelevel>
<SQLDatabase>false</SQLDatabase>
<SilentOn>false</SilentOn>
<QuietOn>false</QuietOn>
</GeneralSettings>

Network

iaadmin show --setting=network --format-type=xml --silent

Output

<?xml version="1.0" encoding="UTF-8"?>
<NetworkSettings>
<EventsOn>True</EventsOn>
<EventPort>560</EventPort>
<EventAddress>127.0.0.1</EventAddress>
<CommandOn>False</CommandOn>
<CommandPort>1626</CommandPort>
</NetworkSettings>

Folders
```
iaadmin show --setting=folders --format-type=xml --silent
```
Output

```
<?xml version="1.0" encoding="UTF-8"?>
<ApplicationPaths>
<ConfigurationPath>C:\ProgramData\IDK-Software\ImgArchive/config</ConfigurationPath><SystemPath>C:\ProgramData\IDK-Software\ImgArchive/system</SystemPath>
<LogPath>C:\ProgramData\IDK-Software\ImgArchive/logs</LogPath>
<ToolsPath>C:\ProgramData\IDK-Software\ImgArchive/tools</ToolsPath>
<HookPath>C:\ProgramData\IDK-Software\ImgArchive/hooks</HookPath>
<HistoryPath>C:\ProgramData\IDK-Software\ImgArchive/history</HistoryPath><SQLDatabasePath>C:\ProgramData\IDK-Software\ImgArchive/sqldb</SQLDatabasePath><TemplatesPath>C:\ProgramData\IDK-Software\ImgArchive/templates</TemplatesPath><TempPath>C:\Users\iferg\AppData\Local\Temp</TempPath></ApplicationPaths>
....
```


iaadmin.exe show --setting=logging --format-type=xml --silent C:\Development\ImgArchive\x64\Debug> .\iaadmin.exe show --setting=master --format-type=xml --silent

<?xml version="1.0" encoding="UTF-8"?><MasterArchive><Location>Valid</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/master</Path><BackupOne><Enabled>False</Enabled><Location>Valid</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/backups/MasterBackup1</Path></BackupOne><BackupTwo><Enabled>False</Enabled><Location>Valid</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/backups/MasterBackup2</Path></BackupTwo></MasterArchive>PS C:\Development\ImgArchive\x64\Debug> .\iaadmin.exe show --setting=derivative --format-type=xml --silent<?xml version="1.0" encoding="UTF-8"?><DerivativeArchive><Location>Valid</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/derivative</Path><BackupOne><Enabled>False</Enabled><Location>Not found</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/backups/DerivativeBackup1</Path></BackupOne><BackupTwo><Enabled>False</Enabled><Location>Not found</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/backups/DerivativeBackup2</Path></BackupTwo></DerivativeArchive>PS C:\Development\ImgArchive\x64\Debug> .\iaadmin.exe show --setting=archive --format-type=xml --silent<?xml version="1.0" encoding="UTF-8"?><Archive><Home><Path>C:\ProgramData\IDK-Software\ImgArchive</Path></Home><Vault><MasterArchive><Location>Valid</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/master</Path><BackupOne><Enabled>False</Enabled><Location>Valid</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/backups/MasterBackup1</Path></BackupOne><BackupTwo><Enabled>False</Enabled><Location>Valid</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/backups/MasterBackup2</Path></BackupTwo></MasterArchive><DerivativeArchive><Location>Valid</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/derivative</Path><BackupOne><Enabled>False</Enabled><Location>Not found</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/backups/DerivativeBackup1</Path></BackupOne><BackupTwo><Enabled>False</Enabled><Location>Not found</Location><Path>C:\ProgramData\IDK-Software\ImgArchive/backups/DerivativeBackup2</Path></BackupTwo></DerivativeArchive></Vault><Userspace><Location>Not found</Location><Path>C:\Users\iferg\ImgArchive</Path><Workspace><Location>Not found</Location><Path>C:\Users\iferg\ImgArchive\Workspace</Path><AutoView>On</AutoView><AutoCheckout>Off</AutoCheckout></Workspace><Picture><Location>Not found</Location><Path>C:\Users\iferg\ImgArchive/Pictures</Path><AutoView>On</AutoView></Picture><wwwImagePath><Location>Not found</Location><Path>C:\Users\iferg\ImgArchive/WWWPictures</Path><AutoView>Off</AutoView></wwwImagePath><Metadata><Location>Not found</Location><Path>C:\Users\iferg\ImgArchive/.imga/history</Path><AutoView>On</AutoView></Metadata></Userspace></Archive>