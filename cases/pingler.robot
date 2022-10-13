*** Settings ***
Documentation     This .robot file is a test detail log
Resource          ../resources/browser.resource

*** Variables ***
${url}               https://pingler.com/
${TITLE}             รับผลิตสมุนไพร
${URL_ENDPOINT}       https://amarin-pharma.com/%E0%B8%A3%E0%B8%B1%E0%B8%9A%E0%B8%9C%E0%B8%A5%E0%B8%B4%E0%B8%95%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B9%80%E0%B8%AA%E0%B8%A3%E0%B8%B4%E0%B8%A1-sales-page/

*** Test Cases *** 
1. Open Browser
    Open New Browser  ${url}
    Set Window Size     800    600
2. กรอก Input 
    Input Text  name=title  ${TITLE}
    Input Text  name=url  ${URL_ENDPOINT}
3. checkbox check
    Select Checkbox  name=category[]
4. submit
    Click Button  class=btn-custom 
5. delay 60 sec 
    Sleep    2 minutes
     Close Browser

