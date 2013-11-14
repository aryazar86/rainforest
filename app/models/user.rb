class User < ActiveRecord::Base
  validates_presence_of :name
  has_secure_password

  mount_uploader :image, ImageUploader

  has_many :reviews
  # has_many :products, :through => :reviews
  has_many :reviewed_products, :through => :reviews, :class_name => "Product"

  has_many :products
  
end
