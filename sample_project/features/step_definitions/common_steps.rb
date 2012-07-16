=begin

Capybara:
  Most important things are here:
  https://github.com/jnicklas/capybara/blob/master/README.md
  The full documentation is here:
  http://rubydoc.info/github/jnicklas/capybara/master

#Examples

  #When /^I click (?:on )?["'](.*)['"]$/ do |link|
  #  click_link(link)
  #end

  #Then /^there should be a button called ['"](.*)['"]$/ do |button_name|
  #  page.should have_button(button_name)
  #end

=end

Given /^I am visiting the homepage$/ do
  visit('/')
end

Then /^I should (not )?see a title containing the word "(.*?)"$/ do |should_not, word|
  if should_not
    page.should_not have_css('head title', :text => word)
  else
    page.should have_css('head title', :text => word)
  end

end

Given /^I search for '(.*)'$/ do |phrase|
  within('div#block-search-form') do
    fill_in('edit-search-block-form--2', :with => phrase)
  end
  find('input#edit-submit').click
end

Then /^I should see (a lot of|no) search results$/ do |amount|
  found_results = all('li.search-result')
  if amount == 'a lot of'
    found_results.size.should >= 6
  elsif amount == 'no'
    found_results.should be_empty
  end
end

Then /^I should see the text "(.*?)"$/ do |text|
  page.should have_content(text)
end
