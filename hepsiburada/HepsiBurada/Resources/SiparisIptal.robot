*** Settings ***
Documentation    Hepsiburada.com login fonksiyonlarını içerir.
Library    SeleniumLibrary  

*** Variables ***
${siparislerim_link_locator}  //*[@class='link-type-one'][text()='Siparişlerim']
${iptal_et_buton_locator}  //*[@type='button'][text()='İptal Et']
${iptal_nedeni_list_locator}  //*[@class='hb-form-selectbox']
${iptal_nedeni_locator}  //*[@class='selectbox-result__list']/li[text()='Ürünleri almaktan vazgeçtim']
${secili_urunleri_iptalet_locator}  //*[@type='button'][text()='Seçili Ürünleri İptal Et']
${result_text_locator}  //*[@class='alert-inner-bar__text'][text()='Ürün iptal edildi']


*** Keywords ***
Siparisi Iptal Et 
    Click Element  ${siparislerim_link_locator}
    Click Element    ${iptal_et_buton_locator}    
    Click Element    ${iptal_nedeni_list_locator}   
    Wait Until Element Is Visible    ${iptal_nedeni_locator}     10 
    Click Element    ${iptal_nedeni_locator}
    sleep  5
    Wait Until Page Contains Element    //*[@class='selectbox-placeholder']/span[text()='Ürünleri almaktan vazgeçtim']  10    
    Click Element    ${secili_urunleri_iptalet_locator}    
    sleep  3
    Page Should Contain Element    ${result_text_locator}       


