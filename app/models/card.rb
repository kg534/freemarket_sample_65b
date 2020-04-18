class Card < ApplicationRecord
  belongs_to :user

  validates :card_number, :year, :month, :security_code, presence: true 
end
