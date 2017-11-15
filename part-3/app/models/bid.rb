class Bid < ActiveRecord::Base

  belongs_to :bidder, class_name: :User, foreign_key: :user_id
  belongs_to :item


  validates :amount, numericality: { greater_than: 0 }
end

