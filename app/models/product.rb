class Product < ActiveRecord::Base
  # belongs_to :order
  has_many :orders
  has_many :reviews
end
