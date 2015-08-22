require 'rails_helper'

describe User do
	it 'is valid with first name, last name, password, height, and weight' do
		user = User.create!(
			first_name: "Name", 
			last_name: "Last", 
			password: "password", 
			height: "5'11", 
			weight: 150)
		expect(user).to be_valid
	end	
end