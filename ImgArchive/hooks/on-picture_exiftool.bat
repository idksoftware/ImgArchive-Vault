@echo off
ECHO Your username is:      %USERNAME%
ECHO Your profile path is:  %USERPROFILE%
echo HOOK_PATH: %HookPath%
echo TOOLS_PATH: %ToolsPath%

echo IMAGE_PATH: %ImagePath%
%ToolsPath%/exiftool.exe -b -Previewimage -w _preview.jpg %ImagePath%