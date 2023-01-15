*** Settings ***

Library        SeleniumLibrary


*** Variable ***
${Url}                     http://sampleapp.tricentis.com/101/app.php

*** Keywords ***

Abrir Navegador
  Open Browser       browser=chrome
  Maximize Browser Window
  Capture Page Screenshot

# Fechar Navegador
#   Capture Page Screenshot
#   Close Browser
