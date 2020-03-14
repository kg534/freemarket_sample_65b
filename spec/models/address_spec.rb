require 'rails_helper'

RSpec.describe Address, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  it "ユーザーの住所情報が正しく入力されている" do   
    user = @user
    address = user.build_address(
      postal_code: "1110000",
      prefecture: 4,
      city: "福岡市",
      address_number: "111-000",
      building: "マンション名",
      user_id: 1
    )
    expect(address).to be_valid
  end

  it "郵便番号がなければ無効" do
    user = @user
    address = user.build_address(
      postal_code: nil
    )
    address.valid?
    expect(address.errors[:postal_code]).to include("can't be blank")
  end

  it "都道府県がなければ無効" do
    user = @user
    address = user.build_address(
      prefecture: nil
    )
    address.valid?
    expect(address.errors[:prefecture]).to include("can't be blank")
  end

  it "市区町村がなければ無効" do
    user = @user
    address = user.build_address(
      city: nil
    )
    address.valid?
    expect(address.errors[:city]).to include("can't be blank")
  end

  it "番地がなければ無効" do
    user = @user
    address = user.build_address(
      address_number: nil
    )
    address.valid?
    expect(address.errors[:address_number]).to include("can't be blank")
  end
end