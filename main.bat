@ECHO OFF
::checking
ECHO Time：%date%
ECHO Check if the required folder exists...
if not exist output\ mkdir \output\
if not exist output\ETCP mkdir output\ETCP\
::pre-processing
ECHO.
ECHO start copying
::integrating files
ECHO.
xcopy eu4_chinese\ output\ETCP\ /E /Q /C /Y
xcopy eu4_chinese_sup\ output\ETCP\ /E /Q /C /Y
xcopy ExtendedTimeline\ output\ETCP\ /E /Q /C /Y
xcopy cn_text\ output\ETCP\ /E /Q /C /Y
xcopy addition\ output\ETCP\ /E /Q /C /Y
xcopy mod_descriptor\ output\ /E /Q /C /Y
::post-processing
ECHO.
ECHO Copying the file is finished, finishing the aftermath...
ECHO.
del output\ETCP\thumbnail.png
del /F /S /Q output\ETCP\localisation\_l_spanish.yml
del /F /S /Q output\ETCP\localisation\_l_french.yml
del /F /S /Q output\ETCP\localisation\_l_german.yml
ECHO.
ECHO Compressing the generated files
7z.exe a ETCP.zip .\output\
::done
ECHO.
ECHO End of script running