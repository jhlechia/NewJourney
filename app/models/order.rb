class Order < ActiveRecord::Base
  has_one :payment
  has_many :products
end
