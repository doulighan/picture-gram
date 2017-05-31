class Picture < ApplicationRecord
  has_many :picture_tags
  has_many :tags, through: :picture_tags

  has_many :comments
  belongs_to :user, optional: true


end
