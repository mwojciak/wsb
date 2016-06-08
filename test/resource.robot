*** Settings ***

Documentation  A resource file containing the application specific keywords
...            that create our own domain specific language. This resource
...            implements keywords for testing HTML version of the test
...            application.
Library        Selenium2Library


*** Variables ***

${website_address}  http://www.wsb.pl/
${website_address_gdansk}  http://www.wsb.pl/gdansk/
${BROWSER}  firefox
${OS}  Windows
${DELAY}  0.7
${website_address_EN}  http://www.wsb.pl/english/
${website_address_RU}  http://www.wsb.pl/russian/
${fraza}  kierunki
${valid_pt_user}  pg15496
${valid_pt_password}  1987-09-04
${loging_to_ExNet}  https://portal.wsb.pl
${login_input}  xpath=//*[@id="username2"]
${pwd_input}  xpath=//*[@id="password"]
${search_box_input}  xpath=//*[@id="searchbox"]/form/input[7]
${search_result}  xpath=//*[@id="portlet_3"]/div
${upper_menu_element_parent}  xpath=//*[@id="block-menu-menu-kandydaci"]/h2
${upper_menu_element_child}  xpath=//*[@id="block-menu-menu-kandydaci"]/div/ul/li[3]/a
${side_menu_element_parent}  xpath=//*[@id="contactSlider"]/h2
${side_menu_element_child}  xpath=.//*[@id='contactSlider']/ul[1]/li[2]/a
${city}   /gdansk
${RemoteUrl}   http://maya113:R1RVsqmmoxje1wGWunZv@hub.browserstack.com:80/wd/hub

*** Keywords ***

On The Website
    Open Browser  ${website_address}  ${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=browser:${BROWSER},os:${OS},browserstack.debug:true
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

On The Website Gdansk
    Open Browser  ${website_address_gdansk}  ${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=browser:${BROWSER},os:${OS},browserstack.debug:true
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

Logged to Extranet
    Open Browser  ${website address}  ${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=browser:${BROWSER},os:${OS},browserstack.debug:true
    Maximize Browser Window
    Click Link  ${loging_to_ExNet}
    Input Text  ${login_input}  ${valid_pt_user}
    Input Password  ${pwd_input}  ${valid_pt_password}
    Click Element  xpath=//*[@id="login"]/div[3]/input[3]
    Page Should Contain  EXTRANET




