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

When("I click {string}") do |link|
    click_link link
end 

Then("I click {string} button") do |button|
    click_on button
end

Given("I am on the {string} page") do |edit_page|
    visit edit_article_path(@article )
end

Given("I am on the Edit article page") do
    visit edit_article_path(@article)
end

Then("I should see {string} button") do |edit|
    expect(page).to have_button edit
end


Then("stop") do
    save_and_open_page
end