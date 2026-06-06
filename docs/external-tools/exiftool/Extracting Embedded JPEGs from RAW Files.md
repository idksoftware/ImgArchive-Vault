### ExifTool

ExifTool by Phil Harvey is free, extraordinarily powerful, and actively maintained.

Depending on the camera manufacturer, the embedded JPEG may be stored under different tag names inside the RAW file’s metadata structure. There’s no single universal command that works across all formats.

The two most common tags to try are `JpgFromRaw` and `PreviewImage`. **`JpgFromRaw`** tends to contain a higher-quality or full-resolution JPEG on cameras that embed one (Canon CR2/CR3, Nikon NEF, and others).

**`PreviewImage`** is a fallback that works more broadly across formats but may only contain a medium-resolution preview. Try `JpgFromRaw` first — if it produces an empty or tiny file, switch to `PreviewImage`.

To extract from all files of a specific type in a folder, using Sony ARW as the example:

```
exiftool -b -JpgFromRaw -w _preview.jpg -ext ARW -r .
Or
exiftool -b -JpgFromRaw -w _preview.jpg -r .
```

> **Instructions:** Change **ARW** to your camera’s RAW extension: **NEF** (Nikon), **CR2** or **CR3** (Canon), **RAF** (Fujifilm), **ORF** (Olympus/OM System), **DNG**, etc.
>
> The `-w _preview.jpg` flag appends `_preview` to each original filename for the output. The `-r` flag processes subfolders recursively.
>
> The period at the end is part of the command. It tells ExifTool to process the current directory. Make sure you’ve navigated to the right folder first with `cd /path/to/your/folder`, or on a Mac, by typing `cd` (with a trailing space) and then dragging the folder from Finder into the Terminal window.

If `JpgFromRaw` produces empty files for your format, substitute `-PreviewImage` instead:

```
exiftool -b -PreviewImage -w _preview.jpg -ext ARW -r .
or
exiftool -b -PreviewImage -w _preview.jpg -r .
```

For those who’d rather avoid the terminal, **[ExifToolGUI](https://exiftool.org/gui/)** (Windows) and **[jExifToolGUI](https://github.com/hvdwolf/jExifToolGUI/releases)** (Mac/Windows/Linux) put a graphical interface on top of ExifTool. That said, the tag-name variation between manufacturers means it’s still not entirely simple even with a GUI.