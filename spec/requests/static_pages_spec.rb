require 'spec_helper'

describe "StaticPages" do
  let(:sitename) { "Tutorial: Ruby On Rails Sample App | "}

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'    # use of Capybara function 'visit' to simpulate visiting URL
      expect(page).to have_content('Sample App')  # use the 'page' variable in Capybara  
    end
  
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title(sitename + "Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title(sitename + "Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title(sitename + "About")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact Me'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Me')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title(sitename + "Contact")
    end
  end
end
