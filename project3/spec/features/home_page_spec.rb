require 'rails_helper'

RSpec.describe "home page routes", :type => :feature do

#first starting test - for the home page
  it "visits the home page" do
    #takes us to the primary site page
    visit "home/#index"
    #we expect the page to have the text in the h3 field, which it does
    #testing for false positive, if we include to_not it causes a test failure
    expect(page).to have_css "h1", text: "Court Helper"
  end

  it "routes us to the USCode-API page"

  end

  # it "routes us to the US Code API page"
   
  
