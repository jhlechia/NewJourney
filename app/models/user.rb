class User < ActiveRecord::Base
  attr_accessor :password, :password_confirmation
  validates :password, presence: true, length: { in: 6..20 }, confirmation: true
  validates :password_confirmation, presence: true, length: { in: 6..20 }, confirmation: true
  before_save { self.email = email.downcase }
  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  has_many :orders
end
