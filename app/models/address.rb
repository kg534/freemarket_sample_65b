class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :postal_code, :prefecture, :city, :address_number, presence: true
end
