@echo off
cd %~dp0

rem **********************
rem   �N���X�p�X�̐ݒ�
rem **********************
set CLASSPATH=%cd%\libs\*

rem **********************
rem   �I�v�V�����̐ݒ�
rem **********************
set H2_OPTIONS=
set H2_OPTIONS=%H2_OPTIONS% -web
set H2_OPTIONS=%H2_OPTIONS% -browser

set H2_OPTIONS=%H2_OPTIONS% -tcp
set H2_OPTIONS=%H2_OPTIONS% -baseDir %cd%\dbfile

rem ����� -ifNotExists �ō���Ă����� ���̂��Ƃ� -ifExists �ɂ��Ă���
rem set H2_OPTIONS=%H2_OPTIONS% -ifExists
set H2_OPTIONS=%H2_OPTIONS% -ifNotExists

rem �Y��₷���̂Őڑ��T���v����echo ���Ă���
echo ex)JDBC URL=jdbc:h2:tcp://localhost/test

%JAVA_HOME%\bin\java -cp %CLASSPATH% org.h2.tools.Server %H2_OPTIONS%
