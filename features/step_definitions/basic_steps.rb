Given("the following articles exist") do |table|
    table.hashes.each do |article|
        Articles.create!(article)
    end
end

When("I fill in {string} with {string}") do |field, text|
    fill_in(field, with: text)
end

Given("I visit the {string} page") do |string|
    visit root_path
end

When("I click {string} link") do |link|
    click_link link
end 

When("I click {string} button") do |button|
    click_button button 
end

When("I click {string}") do |id|
    visit edit_article_path
end

When("stop") do
    save_and_open_page
end                 

Given("I visit the {string}") do |string|
    visit edit_article_path
end