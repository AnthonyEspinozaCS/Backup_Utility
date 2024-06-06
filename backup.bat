@ECHO OFF
set MMDDYYYY=%DATE:~4,2%-%DATE:~7,2%-%DATE:~12,2%
ECHO Beginning Backup of %MMDDYYYY%

robocopy C:\Users\Oblivion\Documents\Random C:\Users\Oblivion\Documents\git_repos\Backup_Utility\backups\Backup_%MMDDYYYY% /s /NFL /NDL /NJH /NJS /nc /ns /np
set exitcode=%errorlevel%

if %errorlevel% equ 1 (
    ECHO Backup completed successfully.
    timeout /t 10
    exit
) else (
    ECHO Backup failed with error code %errorlevel%
    PAUSE
)