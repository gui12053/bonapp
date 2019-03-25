require 'rails_helper'

describe User do
	it "is not valid without an email" do
		expect(User.new(email: "gmail@gmail.com")).not_to be_valid
	end
	describe User, type: :model do
		it "should not validate users without an email address" do
			@user = FactoryBot.build(:user, email: "not_an_email")
			expect(@user).to_not be_valid
		end
	end
end
