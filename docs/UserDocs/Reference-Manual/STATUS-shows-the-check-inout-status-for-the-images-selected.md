# STATUS – shows the check in/out status for the images selected

# Name

iavault status <options>

## Synopsis

iavault status [–out=<options>] [–file=<filename>]

## Description

Status shows the check in/out status for the images selected by the scope option. The output from this command can be  human readable text, csv, xml, json or html.

## Options

–out :

Output type: text, xml, json or html.

## Syntax

--format-type=xml=[plain] | [xml] | [json] | [html]

–file :

output file name. 
Syntax:

file=<filename>

 

examples:

status without any options will output to the display status of all the images in human readable form: 

```
iaadmin status
```

output:

`Filename     Filepath        Event Version DateAdded           Comment`
`DSC00104.JPG 2016-12-28      added       0 2023.08.16.12.00.24`
`DSC00105.JPG 2016-12-28      added       0 2023.08.16.12.00.24`
`DSC00106.JPG 2016-12-28      added       0 2023.08.16.12.00.25`

`DSC00107.JPG 2016-12-28      added       0 2023.08.16.12.00.25`
`DSC00108.JPG 2016-12-28      added       0 2023.08.16.12.00.26`
`DSC00109.JPG 2016-12-28      added       0 2023.08.16.12.00.27`
`DSC00152.JPG 2016-12-31      added       0 2023.07.08.20.53.26`
`DSC00153.JPG 2016-12-31      added       0 2023.07.08.20.53.26`

adding scope filters to only images that match the scope criteria. 

```
iaadmin status --scope=2016-12-28
```

output:

`Filename     Filepath        Event Version DateAdded           Comment`
`DSC00104.JPG 2016-12-28      added       0 2023.08.16.12.00.24`
`DSC00105.JPG 2016-12-28      added       0 2023.08.16.12.00.24`
`DSC00106.JPG 2016-12-28      added       0 2023.08.16.12.00.25`

`DSC00107.JPG 2016-12-28      added       0 2023.08.16.12.00.25`
`DSC00108.JPG 2016-12-28      added       0 2023.08.16.12.00.26`
`DSC00109.JPG 2016-12-28      added       0 2023.08.16.12.00.27`

`iaadmin status --scope=2016-12-28` --format-type=xml

output:

<?xml version="1.0" encoding="UTF-8"?><Catalog ordering="date" from="2015-03-6 12.10.45" to="2015-03-6 12.10.45">        <Event>                <Filename>DSC00104.JPG</Filename>                <Filepath>2016-12-28</Filepath>                <Event>added</Event>                <Version>0</Version>                <DateAdded>2023.08.16.12.00.24</DateAdded>                <Comment/>        </Event>        <Event>                <Filename>DSC00105.JPG</Filename>                <Filepath>2016-12-28</Filepath>                <Event>added</Event>                <Version>0</Version>                <DateAdded>2023.08.16.12.00.24</DateAdded>                <Comment/>        </Event>        <Event>                <Filename>DSC00106.JPG</Filename>                <Filepath>2016-12-28</Filepath>                <Event>added</Event>                <Version>0</Version>                <DateAdded>2023.08.16.12.00.25</DateAdded>                <Comment/>        </Event>        <Event>                <Filename>DSC00107.JPG</Filename>                <Filepath>2016-12-28</Filepath>                <Event>added</Event>                <Version>0</Version>                <DateAdded>2023.08.16.12.00.25</DateAdded>                <Comment/>        </Event>        <Event>                <Filename>DSC00108.JPG</Filename>                <Filepath>2016-12-28</Filepath>                <Event>added</Event>                <Version>0</Version>                <DateAdded>2023.08.16.12.00.26</DateAdded>                <Comment/>        </Event>        <Event>                <Filename>DSC00109.JPG</Filename>                <Filepath>2016-12-28</Filepath>                <Event>added</Event>                <Version>0</Version>                <DateAdded>2023.08.16.12.00.27</DateAdded>                <Comment/>        </Event></Catalog>