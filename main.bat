@ECHO OFF
::checking
chcp 936
ECHO ����ʱ�䣺%date%
ECHO ����Ƿ������Ҫ���ļ�����...
if not exist \output\ mkdir \output\
if not exist \output\ETCP mkdir \output\ETCP
::pre-processing
ECHO.
ECHO ��ʼ�����ļ�...
::integrating files
cp -r eu4_chinese/* output/ETCP/
cp -r eu4_chinese_sup/* output/ETCP/
cp -r ExtendedTimeline/* output/ETCP/
cp -r cn_text/* output/ETCP/
cp -r addition/* output/ETCP/
cp -r mod_descriptor/* output/
::post-processing
ECHO.
ECHO �����ļ���������������ƺ�...
del output\ETCP\thumbnail.png
del /F /S /Q output/ETCP/output/ETCP/output/ETCP/*_l_spanish.yml
del /F /S /Q output/ETCP/output/ETCP/*_l_french.yml
del /F /S /Q output/ETCP/*_l_german.yml
::done
ECHO.
ECHO �ű����н���