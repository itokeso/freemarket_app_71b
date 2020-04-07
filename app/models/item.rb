class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :images

  belongs_to :seller, class_name: 'User', :foreign_key => 'seller_id', optional: true
  belongs_to :buyer, class_name: 'User', :foreign_key => 'buyer_id', optional: true

  accepts_nested_attributes_for :images, allow_destroy: true
  

end
