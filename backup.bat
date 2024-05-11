@ECHO OFF
set MMDDYYYY=%DATE:~4,2%-%DATE:~7,2%-%DATE:~12,2%
ECHO Beginning Backup of %MMDDYYYY%
robocopy C:\Users\Oblivion\Documents\Random C:\Users\Oblivion\Documents\git_repos\Backup_Utility\Backup_%MMDDYYYY% /s /NFL /NDL /NJH /NJS /nc /ns /np
set exitcode=%errorlevel%
if %exitcode% equ 0 (
    ECHO Backup completed successfully.
) else (
    ECHO Backup failed with error code %errorcode%
)
PAUSE