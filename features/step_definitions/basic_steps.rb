Given("I visit the {string} page") do |string|
    visit root_path
end

When("I click {string} link") do |link|
    click_link link
end 

When("I click {string} button") do |button|
    click_button button 
end

Given("I click {string}") do |string|
    find_button('Edit').click
end

When("I fill in {string} with {string}") do |expected_content, text|
    fill_in(expected_content, with: text)
end

When("I visit the site") do
    visit root_path
end

Given("the following articles exist") do |table|
    table.hashes.each do |article|
        Articles.create!(article)
    end
end