::=====setting environment=====
@ECHO OFF
set mod_desc=ETC.mod
set mod_dir=ETC
::=====setting environment end=====
::=====checking=====
ECHO Time:%date%
ECHO Checking the required folder...
if not exist output\ ( mkdir output\ ) else ( del /F /S /Q output\ & rmdir /S /Q output\ & mkdir output\ )
if not exist output\%mod_dir% mkdir output\%mod_dir%\
if exist *.zip del /F /S /Q *.zip
::=====checking end=====
::=====integrating files=====
ECHO.
ECHO Copying started.
ECHO.
xcopy eu4_chinese\ output\%mod_dir%\ /E /Q /C /Y
xcopy eu4_chinese_sup\ output\%mod_dir%\ /E /Q /C /Y
del /F /S /Q output\%mod_dir%\descriptor.mod
del /F /S /Q output\%mod_dir%\history\provinces
del /F /S /Q output\%mod_dir%\interface\endgamedialog.gui
@REM xcopy ExtendedTimeline\ output\%mod_dir%\ /E /Q /C /Y
xcopy cn_text\ output\%mod_dir%\ /E /Q /C /Y
xcopy addition\ output\%mod_dir%\ /E /Q /C /Y
xcopy mod_descriptor\%mod_desc% output\ /E /Q /C /Y
ECHO path="mod/%mod_dir%" >> output\%mod_desc%
xcopy mod_descriptor\%mod_desc% output\%mod_dir%\ /Q /C /Y
ren output\%mod_dir%\%mod_desc% descriptor.mod
::=====integrating files end=====
::=====post-processing=====
ECHO.
ECHO Copying the file is finished, finishing the aftermath...
ECHO.
@REM 7z.exe x ET.zip ExtendedTimeline/ -o.
::====fix crash====
@REM del /F /S /Q output\%mod_dir%\*_DE.txt
@REM del /F /S /Q output\%mod_dir%\*_DE.txt
@REM del /F /S /Q output\%mod_dir%\common\scripted_effects
@REM del /F /S /Q output\%mod_dir%\common\scripted_triggers
@REM rmdir /S /Q output\%mod_dir%\common\scripted_effects
@REM rmdir /S /Q output\%mod_dir%\common\scripted_triggers
@REM xcopy ExtendedTimeline\common\scripted_effects\00_scripted_effects.txt output\%mod_dir%\common\scripted_effects\ /Q /C /Y
@REM xcopy ExtendedTimeline\common\scripted_triggers\00_scripted_triggers.txt output\%mod_dir%\common\scripted_triggers\ /Q /C /Y
::====fix crash end====
xcopy CHANGELOG.md output\%mod_dir%\ /Q /C /Y
del output\%mod_dir%\thumbnail.png
xcopy thumbnail.png output\%mod_dir%\ /Q /C /Y
@REM del /F /S /Q output\%mod_dir%\*_DE.txt
@REM del /F /S /Q output\%mod_dir%\*_FR.txt
@REM del /F /S /Q output\%mod_dir%\*_SP.txt
@REM del /F /S /Q output\%mod_dir%\localisation\*_l_french.yml
@REM del /F /S /Q output\%mod_dir%\localisation\*_l_german.yml
@REM del /F /S /Q output\%mod_dir%\localisation\*_l_spanish.yml
ECHO.
ECHO Compressing the mod files...
7z.exe a %mod_dir%-%TAG_NAME%-%COMMIT_ID%-.zip .\output\%mod_dir%*
::=====post-processing end=====

ECHO.
ECHO End of script running.