When("I click {string}") do |element|
    binding.pry
    click_on element
end

When("I fill in {string} with {string}") do |input, content|
    fill_in input, with: content
end 