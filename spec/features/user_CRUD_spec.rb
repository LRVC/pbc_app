require 'rails_helper'

feature 'create Users' do 

	before :each do 
		User.destroy_all
		@user = User.create!(
			first_name: "Name", 
			last_name: "Last",
			email: "user@exmple.com", 
			password: "password", 
			height: "5'11", 
			weight: 150)
		visit root_path
	end

	scenario 'User can sign up with valid information' do
		visit root_path

		click_on 'Sign Up'

		fill_in 'First Name', with: "Person"
		fill_in 'Last Name', with: "Last"
		fill_in 'Email', with: "person@example.com"
		fill_in 'Password', with: "password"
		
		click_on 'Register'

		expect(current_path).to eq root_path
	end

	scenario 'User can not register and will see error messages if fields are not valid' do
		visit root_path

		click_on 'Sign Up'
		click_on 'Register'

		expect(page).to have_content "First name can't be blank"
		expect(page).to have_content "Last name can't be blank"
		expect(page).to have_content "Email can't be blank"
		expect(page).to have_content "Password can't be blank"
	end


end