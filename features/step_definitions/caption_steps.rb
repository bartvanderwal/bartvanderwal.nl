require_relative '../../_plugins/caption_format_checker'

# Store validation result
Before do
  @validation_result = nil
end

Given('a markdown file {string}') do |filepath|
  @markdown_content = File.read(filepath)
end

When('I validate the captions') do
  @validation_result = CaptionFormatChecker.validate_content(@markdown_content)
end

Then('the validation should pass') do
  raise "Expected validation to pass but got errors: #{@validation_result[:errors].inspect}" unless @validation_result[:valid]
end

Then('the validation should fail') do
  raise "Expected validation to fail but it passed" if @validation_result[:valid]
  raise "Expected errors but got none" if @validation_result[:errors].empty?
end

Then('the error should be on line {int}') do |line_number|
  actual_line = @validation_result[:errors].first[:line]
  raise "Expected error on line #{line_number} but got line #{actual_line}" unless actual_line == line_number
end

Then('the error message should contain {string}') do |expected_message|
  actual_message = @validation_result[:errors].first[:message]
  raise "Expected error message to contain '#{expected_message}' but got: '#{actual_message}'" unless actual_message.include?(expected_message)
end
