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
    click_link_or_button link
end 

Then("I should return to the {string} page") do |a|
    expect(current_path).to eq articles_path
end

Given("I am on the {string} page") do |edit_page|
    visit edit_article_path(@article )
end

Given("I am on the Edit article page") do
    visit edit_article_path(@article)
end

When("I click on {string} content {string} button") do |article_id, edit|
    article = Articles.find_by(content: article_id)
    within("#_#{article.content}") do
      expect(page).to have_button edit
    end
  end

When("I see the {string} content") do |text|
    expect(page).to have_content text
end

Then("stop") do
    save_and_open_page
end