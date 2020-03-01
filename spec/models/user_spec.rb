require 'rails_helper'

RSpec.describe User, type: :model do
  it "ユーザーのニックネーム、メールアドレス、パスワード、苗字、名前、カナ、生年月日、電話番号が正しく入力されている" do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end

  it "ニックネームがなければ無効" do
    user = User.new(nickname: nil)
    user.valid?
    expect(user.errors[:nickname]).to include("can't be blank")
  end

  it "メールアドレスがなければ無効" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "パスワードがなければ無効" do
    user = User.new(password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "苗字がなければ無効" do
    user = User.new(last_name: nil)
    user.valid?
    expect(user.errors[:last_name]).to include("can't be blank")
  end

  it "名前がなければ無効" do
    user = User.new(first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

  it "苗字カナがなければ無効" do
    user = User.new(j_last_name: nil)
    user.valid?
    expect(user.errors[:j_last_name]).to include("can't be blank")
  end

  it "名前カナがなければ無効" do
    user = User.new(j_first_name: nil)
    user.valid?
    expect(user.errors[:j_first_name]).to include("can't be blank")
  end

  it "生年月日がなければ無効" do
    user = User.new(birthday: nil)
    user.valid?
    expect(user.errors[:birthday]).to include("can't be blank")
  end

  it "パスワードが6文字以下なら無効" do
    user = User.new(password: "111111")
    user.valid?
    expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
  end

  it "苗字が全角以外なら無効" do
    user = User.new(last_name: "lastname")
    user.valid?
    expect(user.errors[:last_name]).to include("は全角で入力してください")
  end

  it "名前が全角以外なら無効" do
    user = User.new(first_name: "firstname")
    user.valid?
    expect(user.errors[:first_name]).to include("は全角で入力してください")
  end

  it "苗字カナが全角以外なら無効" do
    user = User.new(j_last_name: "j_lastname")
    user.valid?
    expect(user.errors[:j_last_name]).to include("は全角で入力してください")
  end

  it "名前カナが全角以外なら無効" do
    user = User.new(j_first_name: "j_firtname")
    user.valid?
    expect(user.errors[:j_first_name]).to include("は全角で入力してください")
  end
end
