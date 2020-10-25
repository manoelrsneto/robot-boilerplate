*** Settings ***
Library     AppiumLibrary

*** Variables ***
${APPIUM_SERVER}        http://localhost:4723/wd/hub
${UDID}                 UDID DO APARELHO
${PLATFORM_NAME}        Android
${DEVICE_NAME}          NOME DO APARELHO
${MAIN_ACTIVITY}        ACTIVITY PRINCIPAL
${APP}                  apps/NOME DO APP
${AUTOMATION_NAME}      UiAutomator1

*** Keywords ***
Abrir aplicativo
    Open Application      ${APPIUM_SERVER}        udid=${UDID}        platformName=${PLATFORM_NAME}       deviceName=${DEVICE_NAME}       app=${APP}      appWaitActivity=${MAIN_ACTIVITY}          automationName=${AUTOMATION_NAME}

Fechar aplicativo
    Close Application