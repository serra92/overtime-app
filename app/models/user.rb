# Model fof User
class User < ApplicationRecord
  PHONE_REGEX = /\A[0-9]*\z/

  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :first_name, :last_name, :phone
  validates :phone, length: { is: 9 }
  validates_format_of :phone, with: PHONE_REGEX

  def full_name
    "#{last_name.upcase}, #{first_name.upcase}"
  end
end
