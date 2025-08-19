@echo off
setlocal

:: Check arguments
if "%~1"=="" (
    echo Usage: %~nx0 old_branch_name new_branch_name
    exit /b 1
)
if "%~2"=="" (
    echo Usage: %~nx0 old_branch_name new_branch_name
    exit /b 1
)

:: Assign arguments
set old_name=%~1
set new_name=%~2
set remote=origin

echo Renaming local branch: %old_name% -> %new_name% ...
git branch -m %old_name% %new_name%

echo Deleting old branch on remote...
git push %remote% --delete %old_name%

:: Alternative shorter delete form
:: git push %remote% :%old_name%

echo Unsetting upstream for new branch...
git branch --unset-upstream %new_name%

echo Pushing new branch to remote...
git push %remote% %new_name%

echo Resetting upstream branch...
git push %remote% -u %new_name%

echo Done!
endlocal
