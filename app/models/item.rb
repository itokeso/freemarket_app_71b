class Item < ApplicationRecord
  # validates :user_id, presence: true
  # validates :category_id, presence: true
  # validates :seller_id,  presence: true
  # validates :name, presence: true
  # validates :content, presence: true
  # validates :status, presence: true
  # validates :price, presence: true
  # validates :cost, presence: true
  # validates :date, presence: true
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user
  belongs_to :category
  has_many :images
  accepts_nested_attributes_for :images
end
