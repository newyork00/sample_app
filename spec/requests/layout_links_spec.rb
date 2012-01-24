require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'"  do
    get '/'
    response.body.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.body.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.body.should have_selector('title', :content => "About")
  end

  it "should have an About page at '/help'" do
    get '/help'
    response.body.should have_selector('title', :content => "Help")
  end

end
#  describe "GET /layout_links" do
#    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get layout_links_index_path
#      response.status.should be(200)
#    end
#  end
