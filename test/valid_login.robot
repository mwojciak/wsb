*** Settings ***

Documentation  A test suite with a single test for valid login. This test has
...            a workflow that is created using keywords from the resource file.
Resource       resource.robot


*** Test Cases ***
User can create an account and log in

    Open Browser To Login Page
    Create Valid User    maja    P4ssw0rd
    Attempt to Login with Credentials    maja    P4ssw0rd
    Status Should Be    Logged In
    Close Browser
