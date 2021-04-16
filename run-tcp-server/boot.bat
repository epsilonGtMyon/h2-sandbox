@echo off
cd %~dp0

rem **********************
rem   クラスパスの設定
rem **********************
set CLASSPATH=%cd%\libs\*

rem **********************
rem   オプションの設定
rem **********************
set H2_OPTIONS=
set H2_OPTIONS=%H2_OPTIONS% -web
set H2_OPTIONS=%H2_OPTIONS% -browser

set H2_OPTIONS=%H2_OPTIONS% -tcp
set H2_OPTIONS=%H2_OPTIONS% -baseDir %cd%\dbfile

rem 初回は -ifNotExists で作っておいて そのあとは -ifExists にしておく
rem set H2_OPTIONS=%H2_OPTIONS% -ifExists
set H2_OPTIONS=%H2_OPTIONS% -ifNotExists

rem 忘れやすいので接続サンプルをecho しておく
echo ex)JDBC URL=jdbc:h2:tcp://localhost/test

%JAVA_HOME%\bin\java -cp %CLASSPATH% org.h2.tools.Server %H2_OPTIONS%
