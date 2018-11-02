Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should see {string} button") do |edit|
    expect(page).to have_button edit
end

Then("I should be on {string} page") do  |string|
    expect(current_path).to eq articles_path
end

Then("I should see the {string} page") do |article|
    expect(current_path).to eq new_article_path
end