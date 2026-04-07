# PROP – Manage image properties

# Name

iaarc prop <options>

## Synopsis

iaarc prop [--scope=[address]] [—set [option=value]]

## Description

This command sets user defined metadata properties on an image or images depending on the scope option.

There are some limitations on the properties that can be set as some properties are set by the system and if the user sets them incorrectly then the system may not operate correctly. For example: setting the image file name will unassociate the metadata from the image. Some options make no sense in changing such as the MD5 checksum.

A full list of properties that the user can change:

- Description - Description
- Label - Label
- Title - Title
- Subject - Subject
- RatingRating - Rating Rating
- RatingPercent - Rating Percent
- Tags - Hashtags
- Keywords - Keywords
- Version - Version
- Comment - Comment
- Author - Author
- SubsetTimeOriginal - Subset time original
- Copyright - Copyright
- Width - Width
- Height - Height
- ViewRotation - View rotation or Orientation 
- 1 = Horizontal (normal)
  2 = Mirror horizontal
  3 = Rotate 180
  4 = Mirror vertical
  5 = Mirror horizontal and rotate 270 CW
  6 = Rotate 90 CW
  7 = Mirror horizontal and rotate 90 CW
  8 = Rotate 270 CW
- BitsPerSample - Bits per sample
- XResolution - X Resolution
- YResolution - Y Resolution
- ResolutionUnit - Resolution Unit
- Compression Compression
- Maker - Camera Maker
- Model - Camera Model
- ExposureTimeExposureTime Exposure Time Exposure Time
- Aperture Aperture
- ISOSpeedRating - ISO Speed Rating
- ExposureBias - Exposure Bias
- ExposureProgram - Exposure Program
- SubjectDistance - Subject Distance
- FocalLengt - Focal Lengthh
- FocalLengthIn35mm - Focal Length In 35mm
- Flash - Flash
- MeteringMode - Metering Mode
- DigitalZoom - Digital Zoom
- LightSource - Light Source
- ColorSpace - Color Space
- WhiteBalance - White Balance
- SceneCaptureType - Scene Capture Type
- Contrast - Contrast
- Saturation - Saturation
- Sharpness - Sharpness
- BrightnessValue - Brightness Value
- SubjectDistanceRange - Subject Distance Range
- MaxAperture - MaxApertureCompressed
- BitsPerPixel - Compressed Bits Per Pixel
- FlashEnergy - Flash Energy
- ExifVersion - Exif Version
- Software - Software
- PhotometricInterpretation - Photometric Interpretation
  0 = WhiteIsZero
  1 = BlackIsZero
  2 = RGB
  3 = RGB Palette
  4 = Transparency Mask
  5 = CMYK
  6 = YCbCr
  8 = CIELab
  9 = ICCLab
  10 = ITULab
- GPSTimeStamp - GPS Time Stamp
- SensingMethod - Sensing Method
- Latitude - Latitude
- Longitude - Longitude
- Location - Location
- Scene - Scene
- SourceUrl - Source Url
- UsageRights - Usage Rights
- CopyrightURL - Copyright URL
- Headline - Headline
- Category - Category
- Source - Source
- Instructions - Instructions
- Creator - Creator
- JobTitle - JobTitle
- Address - Address
- City - City
- State - State
- PostalCode - Postal Code
- Country - Country
- Phone - Phone
- Email - Email
- WEBSite - WEBSite
- ViewRotation - View rotation or Orientation 
- 1 = Horizontal (normal)
  2 = Mirror horizontal
  3 = Rotate 180
  4 = Mirror vertical
  5 = Mirror horizontal and rotate 270 CW
  6 = Rotate 90 CW
  7 = Mirror horizontal and rotate 90 CW
  8 = Rotate 270 CW

## Options

–out :

Output type: text, xml, json or html.

## Syntax


out=[plain] | [xml] | [json] | [html]

–file :

output file name. 
Syntax:

file=<filename>

 

Examples

 

 

 