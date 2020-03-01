FactoryBot.define do
  factory :user do
    nickname { 'テスト' }
    email { 'test@example.com' }
    password { 'password' }
    last_name { '田中' }
    first_name { '太郎' }
    j_last_name { 'タナカ' }
    j_first_name { 'タロウ' }
    birthday { '1999-01-01' }
    phone_number { '09099998888' }
  end
end