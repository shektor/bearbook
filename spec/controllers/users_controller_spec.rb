require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #new' do
    it 'returns a success response' do
      get :new
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    it "returns a success response" do
      user = User.create!(first_name: 'Bob', last_name: 'Bear', email: 'bob@bear.com', password: 'bobby')
      session[:user_id] = user.id
      get :show, params: { id: user.to_param}
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    it 'creates a new user' do
      get :new
      post :create, params: { user: { first_name: 'Bob', last_name: 'Bear', email: 'bob@bear.com', password: 'bobby' } }
      user = User.find_by(email: 'bob@bear.com')
      expect(user.first_name).to eq 'Bob'
      expect(user.last_name).to eq 'Bear'
    end
  end

  describe "GET /" do
    it "responds with 200" do
      user = User.create!(first_name: 'Bob', last_name: 'Bear', email: 'bob@bear.com', password: 'bobby')
      session[:user_id] = user.to_param
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
