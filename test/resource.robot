*** Settings ***

Documentation  A resource file containing the application specific keywords
...            that create our own domain specific language. This resource
...            implements keywords for testing HTML version of the test
...            application.
Library        Selenium2Library


*** Variables ***

${login address}=  http://zdiles.chaosnet.org/
${BROWSER}       firefox
${DELAY}         0
${VALID USER}    test
${VALID PASSWORD}  test1


*** Keywords ***
Enter Username  [Arguments]  ${username}
  Input Text  uname  ${username}

Enter Password  [Arguments]  ${password}
  Input Text  pwd  ${password}

Click the Login Button
  Click Button  login

Login Is Successful
  Page Should Contain  Welcome

Login is Unsuccessful
  Run Keyword And Expect Error  *  Login Is Successful

Login Test Setup
  Open Browser  ${login address}  ${browser}
  Maximize Browser Window