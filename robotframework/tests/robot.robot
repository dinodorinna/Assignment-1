*** Settings ***
Resource   ${CURDIR}/../resources/common.robot
Suite Teardown    Close Browser

*** Variables ***
${HOMEPAGE}      https://www.cs.kku.ac.th/index.php/th/

*** Test Cases ***
Go To homepage
    Open Browser to    ${HOMEPAGE}
    Title Should Be   สาขาวิชาวิทยาการคอมพิวเตอร์ คณะวิทยาศาสตร์ มหาวิทยาลัยขอนแก่น Department of Computer Science, Faculty of Science, Khon Kaen University 