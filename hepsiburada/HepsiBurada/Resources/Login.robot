*** Settings ***
Documentation    Hepsiburada.com login fonksiyonlarını içerir.
Library    SeleniumLibrary    

*** Variables ***
${header_logo_locator}  //div[@class='header-global container']/a[@class='logo-hepsiburada']  
${my_account_locator}  //div[@id='myAccount']
${login_element_locator}  //a[@id='login'] 
${login_title_locator}  //header[@class='box-header login-header group']
${login_selection_locator}  //label[@for='select-login']
${email_locator}  //input[@id='email']
${password_locator}  //input[@id='password']
${giris_button_locator}  //button[@class='btn full btn-login-submit']
${logout_locator}  //a[@class='logout']

${email}  noyanipek@gmail.com
${password}  A12345

*** Keywords ***
Hesabima Giris Yap
    [Documentation]    Login sayfasi acilarak giris yapilir. Login sayfa kontrolu "hepsiburada.com" logosu ve "giris yap" basligi ile yapilir
    Page Should Contain Element      ${header_logo_locator} 
    Mouse Over    ${my_account_locator}
    Click Element  ${login_element_locator}
    Page Should Contain Element    ${login_title_locator}     
    Click Element    ${login_selection_locator} 
    Click Element    ${email_locator}      
    Input Text    ${email_locator}    ${email}    
    Click Element    ${password_locator}    
    Input Password    ${password_locator}    ${password}    
    Click Element    ${giris_button_locator}   
    Wait Until Page Contains Element    ${my_account_locator}    30
    Page Should Contain Element    ${logout_locator}    
     