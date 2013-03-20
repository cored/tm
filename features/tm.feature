Feature: We can initialize a config file 
  In order to use the cli 
  I want to initialize a config file

  Scenario: Tm with some options
    When I successfully run "tm initconfig --provider 'kanbanpad' --authorization 'url:google.com,token:blah' initconfig"
    Then the stdout should contain "Config file successfully created"
