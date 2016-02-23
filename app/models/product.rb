class Product < ActiveRecord::Base
  # belongs_to :order
  belongs_to :orders
  has_many :reviews
  has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", thumbnail: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Amage\/.*\Z/
end
