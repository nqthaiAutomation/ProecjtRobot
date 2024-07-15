*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
 open website demo prestashop
        open browser  https://shopee.vn/    Chrome
        maximize browser window
#        page should contain  Kênh Người Bán
click to text ${text}
      click element    //*[text()='${text}']
