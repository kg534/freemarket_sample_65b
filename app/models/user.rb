class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, :last_name, :first_name, :j_last_name, :j_first_name, :birthday, presence: true
  validate :zenkaku_last_name
  validate :zenkaku_first_name
  validate :zenkaku_j_lastname
  validate :zenkaku_j_firstname
  has_one :address
  has_many :products
  
  def zenkaku_last_name
    if last_name !~/^[^ -~｡-ﾟ]*$/ 
      errors.add(:last_name, "は全角で入力してください")
    end
  end

  def zenkaku_first_name
    if first_name !~/^[^ -~｡-ﾟ]*$/ 
      errors.add(:first_name, "は全角で入力してください")   
    end
  end

  def zenkaku_j_lastname
    if j_last_name !~/^[^ -~｡-ﾟ]*$/
      errors.add(:j_last_name, "は全角で入力してください")
    end
  end

  def zenkaku_j_firstname
    if j_first_name !~/^[^ -~｡-ﾟ]*$/ 
      errors.add(:j_first_name, "は全角で入力してください")  
    end
  end
end
