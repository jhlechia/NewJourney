class Product < ActiveRecord::Base
  # belongs_to :order
  belongs_to :orders
  has_many :reviews
end
