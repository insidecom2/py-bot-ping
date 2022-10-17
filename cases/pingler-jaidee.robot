*** Settings ***
Documentation     This .robot file is a test detail log
Resource          ../resources/browser.resource

*** Variables ***
${url}               https://pingler.com/
${TITLE}             รับออกแบบเว็บไซต์ เชียงใหม่
${URL_ENDPOINT}       https://jaidee-webdesign.com

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
    Sleep    1 minutes
    Close Browser

