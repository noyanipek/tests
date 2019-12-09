*** Settings ***
Documentation    Genel web fonksiyonlarını içerir.
Library    SeleniumLibrary

*** Variables **
${devamet_buton_locator}  //button[@class='btn btn-primary full']
${odeme_bilgileri_locator}  //li[@class='list-item nav-payment current']
${teslimat_bilgileri_locator}  //span[@class='nav-name'][text()='Teslimat Bilgileri']   
${odeme_yontemleri_container_locator}  //div[@class='payment-container'] 
${odeme_yontemi_havale_locator}  //span[text()='Havale']
${odeme_yontemi_seciniz_header_locator}  //h1[@class='payment-title']
${havale_yapilacak_hesap_locator}  //*[@for='bank-5']
${sparis_sonrasi_odeme_locator}  //div[@class='eft-button iban-eft']
${devamet_havale_buton_locator}  //button[@class='btn long']
${siparisiniz_alindi_header_locator}  //*[@class='box-header-title']


*** Keywords ***      
Odeme Yontemi Sec 
    Wait Until Page Contains Element    ${odeme_yontemleri_container_locator}    
    Page Should Contain Element  ${odeme_bilgileri_locator} 
    sleep  3 
    Click Element    ${odeme_yontemi_havale_locator}  
    Wait Until Page Contains Element    ${havale_yapilacak_hesap_locator}    10
    sleep  5
    Click Element    ${havale_yapilacak_hesap_locator}
    Click Element    ${devamet_buton_locator}    
    Click Element    ${sparis_sonrasi_odeme_locator}
    Click Element    ${devamet_havale_buton_locator}
    Wait Until Page Contains Element  ${teslimat_bilgileri_locator}  60
    sleep  3
    Click Element   ${devamet_buton_locator}     
    Page Should Contain Element    ${siparisiniz_alindi_header_locator}  Sayfa "Siparisiniz alindi" basligini icermelidir.                   
      
    
    