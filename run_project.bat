@echo off
echo Compiling Java files...
javac -cp lib\mssql-jdbc-12.6.1.jre17.jar -d out src\com\ordersupply\*.java
if %ERRORLEVEL% neq 0 (
    echo ❌ Compilation failed!
    pause
    exit /b %ERRORLEVEL%
)
echo Running application...
java -cp "out;lib\mssql-jdbc-12.6.1.jre17.jar" com.ordersupply.Main
pause
