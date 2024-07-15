*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
 open website demo prestashop
        open browser  https://demo.prestashop.com/    Chrome
        maximize browser window
        wait until element is not visible    //*[@id='loadingMessage']    20
        select frame    //*[@name='framelive']
        page should contain image    PrestaShop
click to text ${text}
      click element    //*[text()='${text}']
