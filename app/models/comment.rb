class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo

  validates :photo_id, presence: true
  validates :user_id, presence: true
  validates :body, presence: true, length: { maximum: 250 }
end