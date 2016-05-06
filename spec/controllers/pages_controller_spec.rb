require 'rails_helper'

RSpec.describe PagesController, type: :controller do
	describe "pages#index action" do
  		it "should successfully show the page" do
  			get :index
  			expect(response).to have_http_status(:success)
  		end
  	end

  	# describe "pages#show action" do
  	# 	it "should successfully show the page" do
  	# 		get :show
  	# 		expect(response).to have_http_status(:success)
  	# 	end
  	# end

  	describe "pages#new action" do
  		it "should successfully show the new form" do
  			get :new
  			expect(response).to have_http_status(:success)
  		end
  	end
end
