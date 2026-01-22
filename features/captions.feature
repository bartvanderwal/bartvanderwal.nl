Feature: Caption Format Validation
  As a blog maintainer
  I want to ensure all image captions follow the correct format
  So that the blog posts are consistent and properly formatted

  Scenario: Markdown file with no images should be valid
    Given a markdown file "features/fixtures/no_images.md"
    When I validate the captions
    Then the validation should pass

  Scenario: Markdown file with one valid image should be valid
    Given a markdown file "features/fixtures/one_valid_image.md"
    When I validate the captions
    Then the validation should pass

  Scenario: Markdown file where alt text doesn't match caption should fail
    Given a markdown file "features/fixtures/alt_text_mismatch.md"
    When I validate the captions
    Then the validation should fail
    And the error should be on line 8
    And the error message should contain "Alt text"

  Scenario: Markdown file with colon in wrong position should fail
    Given a markdown file "features/fixtures/colon_wrong.md"
    When I validate the captions
    Then the validation should fail
    And the error should be on line 8
    And the error message should contain "Wrong caption format"

  Scenario: Markdown file with empty line between image and caption should fail
    Given a markdown file "features/fixtures/empty_line_between.md"
    When I validate the captions
    Then the validation should fail
    And the error should be on line 8
    And the error message should contain "Empty line between image and caption"

  Scenario: Markdown file with three images where third has bug should fail at third image
    Given a markdown file "features/fixtures/three_images_third_bug.md"
    When I validate the captions
    Then the validation should fail
    And the error should be on line 18
    And the error message should contain "Wrong caption format"

  Scenario: Markdown file with three images where first has bug should fail at first image
    Given a markdown file "features/fixtures/three_images_first_bug.md"
    When I validate the captions
    Then the validation should fail
    And the error should be on line 8
    And the error message should contain "Empty line between image and caption"

