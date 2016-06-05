*** Settings ***

Documentation  A resource file containing the application specific keywords
...            that create our own domain specific language. This resource
...            implements keywords for testing HTML version of the test
...            application.
Library        Selenium2Library


*** Variables ***

${website address}  http://www.wsb.pl/
${BROWSER}       firefox
${DELAY}   0
${website_address_EN}   http://www.wsb.pl/english/
${website_address_RU}   http://www.wsb.pl/russian/
${fraza}   kierunki




