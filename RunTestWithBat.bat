@echo off

cd /d "C:\Users\deepikaa\Desktop\frameworkSuntech"

REM -- gradlew -->uses wrapper-specific Gradle version
REM -- gradle -->  uses Gradle installed on system 

REM gradlew clean runSuite

call gradlew clean runSuite

pause

*****************************************
@echo off
echo ==== RUNNING AUTOMATION TESTS ====

REM Change to project directory
cd /d "S:\Projects\MySeleniumProject"

REM Run Gradle tests
gradlew clean test

echo ==== TEST EXECUTION DONE ====

REM Generate Allure Report
allure generate allure-results --clean -o allure-report

REM Open Allure Report in browser on random port
set port=%random%
call allure open -p %port% allure-report

pause
