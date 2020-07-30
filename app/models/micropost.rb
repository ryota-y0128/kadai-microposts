class Micropost < ApplicationRecord
  belongs_to :user
  # UserとMicropostsの一対多を表現
  validates :content, presence: true, length: {maximum: 255}
end
