class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :assign_default_role
  validates :phone, uniqueness: true
  has_many :orders, dependent: :destroy
  has_many :products, through: :orders

    def email_required?
      false
    end
  
    def email_changed?
      false
    end

  def assign_default_role
    add_role(:user) if roles.blank?
  end
end
