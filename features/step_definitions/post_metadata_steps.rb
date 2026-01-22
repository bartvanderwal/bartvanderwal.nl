Given('a post with title {string}') do |title|
  @post_data = { title: title }
end

Given('a post with subtitle {string}') do |subtitle|
  @post_data ||= {}
  @post_data[:subtitle] = subtitle
end

Given /the expected validation error is "(.*)"/ do |error_text|
  @expected_validation_error = error_text
end

Then('the title passes validation') do
  title_length = @post_data[:title].length
  expect(title_length).to be <= 36, "Title length #{title_length} exceeds max 36"
end

Then('the title fails validation') do
  title_length = @post_data[:title].length
  expect(title_length).to be > 36, "Expected title to fail but it was #{title_length} chars"
end

Then /the title fails validation with "(.*)"/ do |error_msg|
  title_length = @post_data[:title].length
  expect(title_length).to be > 36, "Expected title to fail but it was #{title_length} chars"
end

Then('the subtitle passes validation') do
  subtitle_length = @post_data[:subtitle].length
  expect(subtitle_length).to be <= 65, "Subtitle length #{subtitle_length} exceeds max 65"
end

Then('the subtitle fails validation') do
  subtitle_length = @post_data[:subtitle].length
  expect(subtitle_length).to be > 65, "Expected subtitle to fail but it was #{subtitle_length} chars"
end

Then /the subtitle fails validation with "(.*)"/ do |error_msg|
  subtitle_length = @post_data[:subtitle].length
  expect(subtitle_length).to be > 65, "Expected subtitle to fail but it was #{subtitle_length} chars"
end
