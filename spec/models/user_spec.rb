require 'rails_helper'

describe User do
	it 'is valid with all fields complete' do
		user = User.create!(
			first_name: "First", 
			last_name: "Last", 
			email: "user@example.com",
			password: "password",
			age: 27, 
			height: 72, 
			weight: 150,
			favorite_climb: "A Ladder",
			home_gym: "Summit",
			role: "Athlete")
		expect(user).to be_valid
	end	
end