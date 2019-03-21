require 'rails_helper'

describe User do
	it "is not valid without an email" do
		expect(User.new(email: "gmail@gmail.com")).not_to be_valid
	end
end
