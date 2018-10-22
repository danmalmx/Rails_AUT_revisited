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


When("I visit the site") do
    visit root_path
end

When("I click {string}") do |btn|
    click_on('Edit')
end
  