# EXIF

Exchangeable image file format (officially Exif, according to JEIDA/JEITA/CIPA specifications) is a standard that specifies the format for images used by digital cameras (including smartphones ), and other systems handling images recorded by digital cameras.

# Background

The Japan Electronic Industries Development Association (JEIDA) produced the initial definition of Exif. 

- Version 2.1 of the specification is dated 12 June 1998.
- Version 2.21 (with Adobe RGB support) is dated 11 July 2003.
- Latest Version 2.32 dated May 2019.

All Digital Cameras today encode Exif data into all images shot.

The metadata tags defined in the Exif standard cover a broad spectrum:

Date and time information. Digital cameras will record the current date and time and save this in the metadata.

- Camera settings. This includes static information such as the camera model and make, and information that varies with each image such as orientation (rotation), aperture, shutter speed, focal length, metering mode, and ISO speed information.
- A thumbnail for previewing the picture on the camera's LCD screen, in file managers, or in photo manipulation software.
- Descriptions
- Copyright information.
- Location Information

# Exif Readers

Exif readers are pieces of software that read and optionally write Exif tags from images. The Exif tag information needs to then be put in a form that can be used. So some Exif Readers allow user to directly view the Exif information. A good example would be the Windows Explorer application. If you select an image that was taken by a camera in the Details tab section of Properties dialog you should be able to view the Exif information Windows Explorer application reads.

However other readers generate a file containing the Exif or simply output the information to the terminal window of the command line tool (cmd.exe) they are running.

ImgArchive contains a basic Exif reader that can read JPG image see 

. 

This reader is fine for JPGs and some other picture formats however to read Propriety RAW formatted Exif information you will need to setup and external Exif reader such as exiftool by Phil Harvey. This tool is free and there are detailed instruction on how to install exiftool in ImgArchive see 

 .

 

 

 