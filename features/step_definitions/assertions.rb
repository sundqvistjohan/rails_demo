Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should be on {string} page") do |article_title|
    article = Article.find_by(title: article_title)
    expect(current_path).to eq article_path(article)  
end
