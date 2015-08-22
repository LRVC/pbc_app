require 'rails_helper'

feature 'create Users' do 

	before :each do 
		User.destroy_all
		@user = User.create!(
			first_name: "Name", 
			last_name: "Last", 
			password: "password", 
			height: "5'11", 
			weight: 150)
		visit root_path
	end

	scenario 'User can sign up with valid information' do
		click_link 'Sign Up'

		fill_in :first_name, with: "Person"
		fill_in :last_name, with: "Last"
		fill_in :password, with: "password"
		fill_in :height, with: "5'11"
		fill_in :weight, with: "150"

		click_on 'Sign Up'

		expect(current_path).to eq root_path
	end
end