@ECHO OFF
set mod_desc=ETCLP.mod
set mod_dir=ETCLP
::checking
ECHO Time:%date%
ECHO Checking the required folder...
if not exist output\ ( mkdir output\ ) else ( del /F /S /Q output\ & rmdir /S /Q output\ & mkdir output\ )
if not exist output\%mod_dir% mkdir output\%mod_dir%\
if exist mod.zip del /F /S /Q mod.zip
::pre-processing
ECHO.
ECHO Copying started.
::integrating files
ECHO.
xcopy eu4_chinese\ output\%mod_dir%\ /E /Q /C /Y
xcopy eu4_chinese_sup\ output\%mod_dir%\ /E /Q /C /Y
del /F /S /Q output\%mod_dir%\history\provinces
xcopy ExtendedTimeline\ output\%mod_dir%\ /E /Q /C /Y
xcopy cn_text\ output\%mod_dir%\ /E /Q /C /Y
xcopy addition\ output\%mod_dir%\ /E /Q /C /Y
xcopy mod_descriptor\ output\ /E /Q /C /Y
ECHO path="mod/ETCLP" >> output\%mod_desc%
xcopy mod_descriptor\%mod_desc% output\%mod_dir%\ /Q /C /Y
del /F /S /Q output\%mod_dir%\descriptor.mod
ren output\%mod_dir%\%mod_desc% descriptor.mod
::post-processing
ECHO.
ECHO Copying the file is finished, finishing the aftermath...
ECHO.
del output\%mod_dir%\thumbnail.png
del /F /S /Q output\%mod_dir%\*_DE.txt
del /F /S /Q output\%mod_dir%\*_FR.txt
del /F /S /Q output\%mod_dir%\*_SP.txt
del /F /S /Q output\%mod_dir%\localisation\*_l_french.yml
del /F /S /Q output\%mod_dir%\localisation\*_l_german.yml
del /F /S /Q output\%mod_dir%\localisation\*_l_spanish.yml
ECHO.
ECHO Compressing the generated files...
7z.exe a mod.zip .\output\*
::done
ECHO.
ECHO End of script running.