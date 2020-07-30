class Micropost < ApplicationRecord
  belongs_to :user
  # UserとMicropostsの一対多を表現
  validates :content, presence: true, length: {maximum: 255}
  
  has_many :reverses_of_favorite, class_name: "Favorites" 
  has_many :bookmarked, through: :reverses_of_favorite, source: :user  
  
end
