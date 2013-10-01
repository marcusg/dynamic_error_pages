require 'spec_helper'

feature "dynamic exception pages should be delivered with html format" do

  scenario "non existent path" do
    visit '/bad_route'
    page.should have_content "my 404"
  end

  scenario "server error" do
    visit '/tests'
    page.should have_content "my 500"
  end

  scenario "bad request" do
    visit test_url('1')
    page.should have_content "my 404" # 404 because 422 is not present
  end

end