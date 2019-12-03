Given("I am on the index page") do
    visit root_path
end

Given("the following articles exist") do |table|
    table.hashes.each do |hash|
        Article.create!(hash)
    end
end

When("I click on {string}") do |element|
    click_on element
end