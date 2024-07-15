*** Settings ***
Resource    commons.robot
Library    SeleniumLibrary
Library    DataDriver  file=datas/users12.csv  encoding = utf_8  dialect = unit
Test Template    Validate UnSuccessful Login
Test Teardown     Close Browser



*** Test Cases ***
Login with user ${userName} and password ${password}  123  aaa
*** Keywords ***
Validate UnSuccessful login
    [Arguments]    ${userName}  ${password}
    open website demo prestashop
    Fill form   ${userName}   ${password}


Fill form
     [Arguments]    ${userName}  ${password}
     Log To Console  userName  ${userName} password ${password}
     Wait Until Element Is Visible    //*[@name="loginKey"]   20

    Input Text    //*[@name="loginKey"]  ${userName}  20
   Sleep    5
     Input Password    //*[@name="password"]  ${password}  20


