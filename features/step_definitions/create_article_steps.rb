Given("I visit the {string} page") do |string|
    visit root_path
end

When("I click {string} link") do |link|
    click_link link
end

When("I click {string} button") do |button|
    click_button button
end

When("I fill in {string} with {string}") do |expected_content, text|
    fill_in(expected_content, with: text)
end