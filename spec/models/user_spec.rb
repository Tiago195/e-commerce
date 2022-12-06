require 'rails_helper'

RSpec.describe User, type: :model do
  context "Validating fields" do
    it "name is not null" do
      user = build(:user, name: nil)

      expect(user.valid?).to eq(false)
    end
    it "phone is not null" do
      user = build(:user, phone: nil)

      expect(user.valid?).to eq(false)
    end
    it "creating user with all valid" do
      user = build(:user)

      expect(user.valid?).to eq(true)
    end
  end
end
