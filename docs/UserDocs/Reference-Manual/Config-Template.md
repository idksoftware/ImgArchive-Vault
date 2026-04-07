# Config - Template

# Name

iaadmin config `--template`<options>

## Synopsis

```
iavault template [–out=<options>] [–file=<filename>]
```

## Description

This command manages the metadata templates. These templates enable you to bulk input metadata into the metadata associated with your images. The client (iavault.exe) is normally run with non-administrative permissions and therefore will only be able to update the current template and not any others. This can be done using the amination tool (iaadmin.exe). However the templates that would be applied can be shown using this command.

This command has two functions:

- To display the templates to be applied to the image metadata.
- Allow you to update the current templates.

## Options

To display the templates to be applied to the image metadata.

--archive=[ master | derivative] or [ m | d ]

This selects the repository to be used. For example

`iavault template` --archive=master

Will print the complete master template to be applied to an original image. Note the default is to show all the templates to be applied.

--level=[ base | current | all ] or [ b | c | a ]

This allows you to select the base, current or all (complete template). For example

`iavault template` --archive=master --level=base

Will print the base master template.

--format-type=[ human | xml | json | html ]

--file=<file path>

To allow you to update the current templates.

--option <label=metadata property>

This allows you to update the current templates by providing a label property label along with metadata value.

Example:

`iavault`template --archive=master --set Maker=Sony

This will update the current master template. the property “Maker” will be updated with the value “Sony”

–out :

Output type: text, xml, json or html.

## Syntax

 

out=[plain] | [xml] | [json] | [html]

–file :

output file name. 
Syntax:

file=<filename>