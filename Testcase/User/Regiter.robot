*** Settings ***
Resource    commons.robot
Library    SeleniumLibrary
*** Test Cases ***
Regiter fall
    open website demo prestashop
    click to text Sign in
    click link    No account? Create one here
    select radio button    id_gender    1
    input text    field-lastname    Nguyen Quang
    input text    field-email    Nguyen Quang
    input password    field-password    Nguyen Quang
    input text    field-birthday    10/31/1984
    select checkbox    optin
    select checkbox    psgdpr
    select checkbox    newsletter
    select checkbox    customer_privacy
    click button  Save
    ${validateFieldFirstname}    get element attribute   id:field-firstnamea    validationMessage
    should be equal as strings    ${validateFieldFirstname}    Please fill out this field.
    input text    id:field-firstname    a
    click button  Save
    ${validateFieldFirstname}    get element attribute   id:field-email    validationMessage
    input text    field-email    Nguyen Quang@a.com
    click button  Save
    should be equal as strings  ${validateFieldFirstname}   Please include an '@' in the email address. 'Nguyen Quang' is missing an '@'.
    click button  Save
    ${validateFieldFirstname}    get element attribute   id:field-email    validationMessage
    should be equal as strings  ${validateFieldFirstname}    A part followed by '@' should not contain the symbol ' '.


Regiter pass
     input text    field-email    Nguyen_Quang@a.com
     click button  Save
     wait until element is visible    //*[normalize-space()='Popular Products']    20
#     sleep    10






