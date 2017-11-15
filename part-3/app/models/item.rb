class Item < ActiveRecord::Base


  belongs_to :owner, class_name: :User, foreign_key: :user_id
  has_many :bids

  has_many :bidders, through: :bids

  validates :name, :condition, :description, :starts_at, :ends_at,  presence: true 
end

