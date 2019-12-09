*** Settings ***
Documentation    Urun secimi ve sepete ekleme fonksiyonlarini icerir
Library    SeleniumLibrary

*** Variables ***
${product_search_locator}  //input[@id='productSearch']
${search_button_locator}  buttonProductSearch
${product_locator}  //div[@class='box product']
#${product_locator}  //a[@href="/mor-bir-fil-gordum-sanki-kral-sakir-7-p-HBV00000O8PK5"]
${iframe_locator}  _hjRemoteVarsFrame
${add_to_cart_button_locator}  addToCart
${sepete_git_locator}  //a[@id='shoppingCart']
${sepetim_title_locator}  //h1[text()='Sepetim']
${alisverisi_tamamla_buton_locator}  //div[@class='cart-proceed-container']/button/span[text()='Alışverişi Tamamla']
${devamet_buton_locator}  //button[@class='btn btn-primary full']
${teslimat_adresi_locator}  //div[@id='addresses']
${sepete_basarili_eklendi_locator}  //div[@id='notification'][text()='Ürün başarılı bir şekilde sepete eklenmiştir.']

*** Keywords ***
Urun Ara
    [Documentation]    Kitap arama fonksiyonu(parametrik yapilabilir) Sayfa kontrolu "urun arama" alani ile yapilir
    Page Should Contain Element    ${product_search_locator} 
    Input Text    ${product_search_locator}    Şeker Portakalı   
    Click Element    ${search_button_locator}    
    Click Element    ${product_locator}    
    Click Element  ${add_to_cart_button_locator}
    sleep  3
    Page Should Contain Element    ${sepete_basarili_eklendi_locator}    
    
Sepete Git ve Alisverişe Devam Et
    Wait Until Element Is Not Visible  ${sepete_basarili_eklendi_locator}  60  
    Click Element    ${sepete_git_locator}
    Wait Until Element Is Not Visible    ${sepete_git_locator}     60
    Wait Until Element Is Visible  ${sepetim_title_locator}        
    Click Element    ${alisverisi_tamamla_buton_locator} 
    Wait Until Element Is Visible    ${devamet_buton_locator}     
    Page Should Contain Element    ${teslimat_adresi_locator}     
    Click Element    ${devamet_buton_locator}   
    

    
    