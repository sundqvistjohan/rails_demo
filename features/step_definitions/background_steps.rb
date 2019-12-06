Given("the following articles exist") do |table|
    table.hashes.each do |hash|
        create(:article, hash)
    end
end

Given("the following users exist") do |table|
    table.hashes.each do |hash|
        create(:user, hash)
    end
end

Given("I am on the index page") do
    visit root_path
end


  
Given("I am logged in as {string}") do |email|
    user = User.find_by(email: email)
  login_as(user)
end
  