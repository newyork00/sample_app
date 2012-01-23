require 'spec_helper'

describe "Static pages" do

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "Home page" do

#    it "should have the content 'Sample App'" do
#      visit '/static_pages/home'
#      page.should have_content('Sample App')
#    end
    it "should have h1 'Sample App'" do
      visit root_path 
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the title 'Home'" do
      visit root_path 
      page.should have_selector('title',
                                :text => "#{@base_title} | Home")
    end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path 
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end

describe "Help page" do

    it "should have h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                                :text => "#{@base_title} | Help")
    end
  end

describe "About page" do

    it "should have h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the title 'About'" do
      visit about_path
      page.should have_selector('title',
                                :text => "#{@base_title} | About")
    end
  end



end


#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end
