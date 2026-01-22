Feature: Blog post metadata validation
  
  Scenario: Title with exactly 36 characters (valid)
    Given a post with title "This title is exactly thirty-six!!!" 
    Then the title passes validation
  
  Scenario: Title with 35 characters (valid)
    Given a post with title "This title is exactly thirtyfive!!!"
    Then the title passes validation
  
  Scenario: Title with 37 characters (invalid)
    Given a post with title "This title is exactly thirtyseven!!!!"
    And the expected validation error is "title length"
    Then the title fails validation
  
  Scenario: Subtitle with exactly 65 characters (valid)
    Given a post with subtitle "This subtitle is exactly sixty-five characters in total length!!!"
    Then the subtitle passes validation
  
  Scenario: Subtitle with 64 characters (valid)
    Given a post with subtitle "This subtitle is mad to b exactly sixtyfour characters in length"
    Then the subtitle passes validation
  
  Scenario: Subtitle with 66 characters (invalid)
    Given a post with subtitle "This subtitle is made to be exactly sixtysix characters in length!"
    And the expected validation error is "subtitle length"
    Then the subtitle fails validation

