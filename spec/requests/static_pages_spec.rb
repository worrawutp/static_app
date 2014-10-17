require 'spec_helper'

describe "StaticPages" do
  let(:sitename) { "Tutorial: Ruby On Rails Sample App"}

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/'    # use of Capybara function 'visit' to simpulate visiting URL
      expect(page).to have_content('Sample App')  # use the 'page' variable in Capybara  
    end
  
    it "should have the right title" do
      visit '/'
      expect(page).to have_title(sitename)
    end

    it "should not have the a custom page title" do
      visit '/'
      expect(page).not_to have_title("| Home")
    end
    
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/help'
      expect(page).to have_title(sitename + " | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/about'
      expect(page).to have_title(sitename + " | About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Me'" do
      visit '/contact'
      expect(page).to have_content('Contact Me')
    end

    it "should have the right title" do
      visit '/contact'
      expect(page).to have_title(sitename + " | Contact")
    end
  end
end
