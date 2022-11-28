@ECHO OFF
::checking
chcp 936
ECHO 现在时间：%date%
ECHO 检查是否存在需要的文件夹中...
if not exist \output\ mkdir \output\
if not exist \output\ETCP mkdir \output\ETCP
::pre-processing
ECHO.
ECHO 开始复制文件...
::integrating files
cp -r eu4_chinese/* output/ETCP/
cp -r eu4_chinese_sup/* output/ETCP/
cp -r ExtendedTimeline/* output/ETCP/
cp -r cn_text/* output/ETCP/
cp -r addition/* output/ETCP/
cp -r mod_descriptor/* output/
::post-processing
ECHO.
ECHO 复制文件结束，正在完成善后...
del output\ETCP\thumbnail.png
del /F /S /Q output/ETCP/output/ETCP/output/ETCP/*_l_spanish.yml
del /F /S /Q output/ETCP/output/ETCP/*_l_french.yml
del /F /S /Q output/ETCP/*_l_german.yml
::done
ECHO.
ECHO 脚本运行结束