@regression
Feature: Login functionality

  @smoke
  Scenario: Validate Login and Logout functionality of the application
#	TS_login_001, TS_login_008
    Given Open Telesign Partner Portal login url
    When Enter valid Login/User ID and Password
    And Click on Sign in button
    Then User should successfully logged into the application
    When Click on Profile icon and Click on Logout/Signout button
    Then User should successfully logged out from the application


  Scenario Outline: Validate Login functionality of the application with invalid credentials
#	TS_login_003, TS_login_004, TS_login_005
    Given Open Telesign Partner Portal login url
    When Enter "<Login/User ID>" and "<Password>"
    And Click on Sign in button
    Then Validation "<message>" should be displayed

    Examples:
    |  Login/User ID  | Password |        message        |
    |     invalid     | invalid  |Enter valid Credentials|
    |       valid     | invalid  |Enter valid Credentials|
    |     invalid     |  valid   |Enter valid Credentials|