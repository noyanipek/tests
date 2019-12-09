*** Settings ***

Library           SeleniumLibrary  
Library  OperatingSystem  
Resource    ../Resources/CommonWeb.robot
Resource    ../Resources/Login.robot
Resource    ../Resources/UrunSecimi.robot
Resource    ../Resources/OdemeYap.robot  
Resource    ../Resources/SiparisIptal.robot

# Test Teardown    Web Sayfasini Kapat

*** Test Cases ***
Hepsiburada sitesine login olarak havale odeme secenegi ile kitap siparisi olusturma ve siparisi iptal etme
    Hepsiburada Web Sayfasini Ac    chrome
    Hesabima Giris Yap
    Urun Ara
    Sepete Git ve Alisverişe Devam Et
    Odeme Yontemi Sec
    Siparisi Iptal Et
    
    