@ECHO OFF
CD %~dp0
bundle exec jekyll serve & http://127.0.0.1:4000/ChunkyGuide/
pause