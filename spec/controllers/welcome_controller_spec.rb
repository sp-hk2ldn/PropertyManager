require 'rails_helper'

RSpec.describe WelcomeController, :type => :controller do

  describe "GET Index" do
    it "returns http success" do
      get :Index
      expect(response).to be_success
    end
  end

end
