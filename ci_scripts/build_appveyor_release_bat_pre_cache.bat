echo %~dp0\build_appveyor_release_bat_pre_cache.bat

rem キャッシュに不要なファイルを削除する
set CUR=%~dp0
cd /d %CUR%..
rem del %CUR%..\libs\*.txt
rem del %CUR%..\libs\*.cmake
rem del %CUR%..\libs\*.bat
rem del %CUR%..\buildtools\*.md
rem del %CUR%..\buildtools\*.cmake
rem rmdir /s /q %CUR%..\buildtools\svnrev
rem rmdir /s /q %CUR%..\buildtools\docker
rem rmdir /s /q %CUR%..\buildtools\download\cygwin_package
rem rmdir /s /q %CUR%..\buildtools\download\cygwin32_package
rem if exist %CUR%..\buildtools\download\innosetup6 (
rem     rmdir /s /q %CUR%..\buildtools\download\innosetup6
rem )
