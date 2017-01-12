require 'rails_helper'
require 'date'

RSpec.describe SearchController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get "new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, :id => :id
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, {search: {query: "bob"}}
      expect(response).to have_http_status(302)
    end
  end

  describe "GET #list" do
    it "returns http success" do
      get :list
      expect(response).to have_http_status(:success)
    end
  end

end
