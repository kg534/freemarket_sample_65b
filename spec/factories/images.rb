FactoryBot.define do
  factory :image do
    src {File.open("#{Rails.root}/public/images/test_image.jpg")}
#     src { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test_image.jpg')) }
  end
end