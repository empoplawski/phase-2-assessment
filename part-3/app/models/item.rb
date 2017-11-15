class Item < ActiveRecord::Base

  belongs_to :user

  validates :name, :condition, :description, :starts_at, :ends_at,  presence: true 
end

