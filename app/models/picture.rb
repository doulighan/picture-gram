class Picture < ApplicationRecord
  has_many :picture_tags
  has_many :tags, through: :picture_tags

  has_many :comments
  belongs_to :user

  def self.order_by_date
    Picture.order(created_at: :desc)
  end
end
