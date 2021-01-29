*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${HOMEPAGE}      https://www.cs.kku.ac.th/index.php/th/
${BROWSER}        Chrome

*** Test Cases ***
Go To homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Title Should Be   สาขาวิชาวิทยาการคอมพิวเตอร์ คณะวิทยาศาสตร์ มหาวิทยาลัยขอนแก่น Department of Computer Science, Faculty of Science, Khon Kaen University 