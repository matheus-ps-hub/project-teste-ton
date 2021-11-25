***Settings***

Library     AppiumLibrary
Resource    ${EXECDIR}/resources/locators.robot


***Test Cases***
Deve acessar a homepage

    Set Appium Timeout  5
    Open Application     http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/twp.apk

    Wait Until Page Contains        Allow      10
    Click element     	            com.android.packageinstaller:id/permission_allow_button
   
   
    Wait Until Page Contains        Entrar      10
    Click Text                      Entrar          
    Wait Until Element Is Visible   ${EMAIL_FIELD}

    Click Element                   ${EMAIL_FIELD}
    Input Text                      ${EMAIL_FIELD}      contactmatheuspereira@gmail.com     
    Wait Until Page Contains        Senha*      5
    

    Click Element                  ${PASSWORD_FIELD}
    Input Text                     ${PASSWORD_FIELD}     190201mM
    

    Wait Until Page Contains        Entrar      10
    Click Element                   ${ENTER_BTN}
    

    Click Text                      Entrar      5
    Click Element                   ${ENTER_BTN}
    

