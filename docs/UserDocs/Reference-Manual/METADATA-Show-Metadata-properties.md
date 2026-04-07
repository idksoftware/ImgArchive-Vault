# METADATA – Show Metadata properties

# Name

iaarc `metadata`<options>

## Synopsis

```
iaarc metadata [–out=<options>] [–file=<filename>]
```

## Description

The command prints out image metadata selected by criteria specified in the commands arguments.

 

## Options

--display=<arguments>

- All
- Brief
- File
- Hash
- Camera

--select=<arguments>

--format-type=<arguments>

Output type: text, xml, json or html.

 

### Display - All

iavault metadata --scope=all --display=brief

\```              SequenceId: 161 ``                Filename: _iain00000161.JPG ``             OrginalName: DSC00158.JPG ``                Filepath: 2016-12-31 ``                    Uuid: 73a5d85f-da7b-278-b4f8-1c16a29818ce ``               MediaType: image/jpeg ``                  Sha256: bc9a2059ab49c34872e890efedf680bf66dff949c5cf3717a8787eb05e14ba37 ``                     Crc: 12325741831679972042 ``                FileSize: 5223875 ``              DateCreate: 2022.10.28.12.37.19 ``            DateModified: 2016.12.31.21.47.02 ``               DateAdded: 2025.06.28.11.56.59 ``             Description: ``                   Label: DSC00158.JPG ``                   Title: Title of image ``                 Subject: Subject of image ``                  Rating: 1 ``           RatingPercent: 30 ``                    Tags: Tags,go,in,here ``                Keywords: Image,Keywords,go,in,here ``                 Version: 0 ``                 Comment: My comment ``                  Author: Iain Ferguson ``             CaptureDate: 2016.12.31.21.47.02 ``      SubsetTimeOriginal: ``               Copyright: ``                   Width: 5472 ``                  Height: 3648 ``            ViewRotation: Horizontal (normal) ``           BitsPerSample: 8 ``             XResolution: 350 ``             YResolution: 350 ``          ResolutionUnit: inches ``             Compression: JPEG (old-style) ``                   Maker: SONY ``                   Model: DSC-RX100M5 ``            ExposureTime: 1/13 ``                Aperture: 2.8 ``          IsoSpeedRating: 100 ``            ExposureBias: 0 ``         ExposureProgram: Manual ``         SubjectDistance: 2.51 ``             FocalLength: 8.8 ``       FocalLenghtIn35mm: 24 ``                   Flash: On, Return detected ``            MeteringMode: Multi-segment ``             DigitalZoom: 1 ``                  LensID: ``                LensSpec: 24-70mm F1.8-2.8 ``             LightSource: Cloudy ``              ColorSpace: sRGB ``            WhiteBalance: Cloudy ``        SceneCaptureType: Standard ``                Contrast: Normal ``              Saturation: Normal ``               Sharpness: Normal ``         BrightnessValue: 3.61484 ``    SubjectDistanceRange: 2.51 m ``             MaxAperture: 1.8 ``  CompressedBitsPerPixel: 2 ``             FlashEnergy: 0 ``             ExifVersion: 0231 ``                Software: 0231 ``PhotometricInterpretation: 11 ``            GpsTimeStamp: ``                Latitude: Latitude ``               Longitude: Longitude ``                Location: Location ``                   Scene: The scene in the image ``               SourceUrl: Some Text ``             UsageRights: Private ``        CopyrightUrl: IainFerguson@idk.co.uk ``            Headline: Headline here ``            Category: The category of the image ``              Source: Source of image ``        Instructions: Some Instructions ``             Creator: The creater ``            JobTitle: Your Job title ``             Address: Your addess` ``                City: Burgess Hill ``               State: Your state ``          PostalCode: RH158BD ``             Country: Your Country ``               Phone: Your Phone ``               Email: Your@Email.com `

```
             Website: http://www.YourWebsite.com 
```

### Display - Brief

iavault metadata --scope=all --display=brief

 Output:

\``` SequenceId: 158 ``   Filename: _iain00000158.ARW `

```
OrginalName: DSC00157-04.ARW
```

### Display - File

iavault metadata --scope=all --display=brief

### Display - Hash

iavault metadata --scope=all --display=brief

### Display - Camera

iavault metadata --scope=all --display=brief

## Syntax


out=[plain] | [xml] | [json] | [html]

–file :

output file name. 
Syntax:

file=<filename>