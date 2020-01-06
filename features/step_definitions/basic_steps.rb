When('I click {string}') do |element|
  click_on element
end

When('I fill in {string} with {string}') do |input, content|
  fill_in input, with: content
end

When('I click {string} for {string}') do |element, article|
  within(".")
  click_on element
end
