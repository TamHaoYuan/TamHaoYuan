@echo off
echo 【local server】
hugo
start msedge.exe http://localhost:1313/
hugo server
pause

