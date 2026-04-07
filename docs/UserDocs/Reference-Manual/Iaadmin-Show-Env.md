# Iaadmin Show - Env

# Name

 

## Synopsis

 

Iaadmin setenv <options>

## Description

 

This command is provided to enable using ImgArchive defined Operating systems environment variables easier to set.

ImgArchive environment variables allow much of the ImgArchive configuration to be defined using the underlying OS environment. The can be both at user or System levels. See Environment Variables

## Syntax

 iaadmin setenv [-q | --quiet] | [ --folders <Option=path>]
| [--enable <Option>] | [--disable <Option>]

## Options

 

–out :

Output type: text, xml, json or html.

out=[plain] | [xml] | [json] | [html]

–file :

output file name.
Syntax:

file=<filename>