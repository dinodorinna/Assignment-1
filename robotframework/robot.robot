*** Settings ***
Library           SeleniumLibrary

Suite Teardown    Close All Browsers
Test Setup  Open Chrome

*** Keywords ***
Open Chrome
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}

*** Variables ***
${HOMEPAGE}      https://www.cs.kku.ac.th/index.php/th/
${BROWSER}        Chrome

*** Test Cases ***
Go To homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Title Should Be   สาขาวิชาวิทยาการคอมพิวเตอร์ คณะวิทยาศาสตร์ มหาวิทยาลัยขอนแก่น Department of Computer Science, Faculty of Science, Khon Kaen University 