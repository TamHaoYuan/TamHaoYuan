@echo off
hugo
hugo server
start msedge.exe http://localhost:1313/
pause
