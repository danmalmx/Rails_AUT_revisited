Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should be on {string} page") do | success |
    expect(page).to have_selector ".success", text: "Article was successfully created."
end