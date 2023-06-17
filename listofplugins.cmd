@echo off
set tmp="https://edgarsgriga.notion.site/Enhanced-ChatGPT-Plugin-List-4ae5aaa14fcf45869a622aea99178652"
IF %tmp% == "" (
        GOTO :query
    ) ELSE (
        GOTO :replace
    )

:replace
set url=%*
set url=%url: =+%
echo %url%
GOTO :search


:query
set /p url=Input search Keywords:
GOTO :search


:search
echo Performing search on %*..
echo Attching to process..
tasklist /nh|findstr "chrome.exe" && start "" "chrome.exe" "%url%"
REM tasklist /nh|findstr "chrome.exe" && start "" "chrome.exe" "www.google.com/search?q=%url%"
