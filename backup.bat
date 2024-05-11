@ECHO OFF
set MMDDYYYY=%DATE:~4,2%-%DATE:~7,2%-%DATE:~12,2%
ECHO Beginning Backup of %MMDDYYYY%
robocopy C:\Users\Oblivion\Documents\Random C:\Users\Oblivion\Documents\Backup_%MMDDYYYY% /s /NFL /NDL /NJH /NJS /nc /ns /np
PAUSE