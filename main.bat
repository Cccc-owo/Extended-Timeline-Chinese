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
cp -r eu4_chinese/* output/ETCP/
cp -r eu4_chinese_sup/* output/ETCP/
cp -r ExtendedTimeline/* output/ETCP/
cp -r cn_text/* output/ETCP/
cp -r addition/* output/ETCP/
cp -r mod_descriptor/* output/
::post-processing
ECHO.
ECHO Copying the file is finished, finishing the aftermath...
ECHO.
del output\ETCP\thumbnail.png
del /F /S /Q output\ETCP\localisation\*_l_spanish.yml
del /F /S /Q output\ETCP\localisation\*_l_french.yml
del /F /S /Q output\ETCP\localisation\*_l_german.yml
::done
ECHO.
ECHO End of script running