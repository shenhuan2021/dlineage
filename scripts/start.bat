@echo on
set JAVA_HOME=%JAVA_HOME%
set classpath=.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar;;.\lib\*
set path=%JAVA_HOME%\bin
java -jar ./bin/gudusoft.dlineage.jar %1 %2 %3 %4 %5 %6 %7 %8 %9
pause
