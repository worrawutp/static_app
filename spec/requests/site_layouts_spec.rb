require 'spec_helper'

describe "SiteLayouts" do
  describe "GET /site_layouts" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get '/'
      response.should be_success
    end
  end
end
