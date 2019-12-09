*** Settings ***
Documentation    Genel web fonksiyonlarını içerir.
Library    SeleniumLibrary

*** Variables ***
  

*** Keywords ***
Hepsiburada Web Sayfasini Ac
    [Documentation]    hepsiburada.com websitesi acilir. 
    [Arguments]    ${browser}
    Open Browser    https://www.hepsiburada.com/  ${browser}
      
    
Web Sayfasini Kapat
    Close Browser
    