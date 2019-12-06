

Given("the following articles exist") do |table|
    table.hashes.each do |hash|
        Article.create!(hash)
    end
end

When("I click {string}") do |element|
    click_on element
end

When("I fill in {string} with {string}") do |input, content|
    fill_in input, with: content
end


  