*** Settings ***
Library           Selenium2Library      run_on_failure=Selenium2Library.CapturePageScreenshot       screenshot_root_directory=./screenshots

*** Keywords ***
Open New Browser
    [Arguments]    ${url}
    ${chrome_options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    # Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu    
    Open Browser    ${url}    chrome    options=${chrome_options}

Set Window Size S
    Set Window Size     800    600

Set Window Size M
    Set Window Size     1280    720

Set Window Size L
    Set Window Size     1360    768

Set Window Size XL
    Set Window Size     1600    900

Set Window Size XXL
    Set Window Size     1920    1080 