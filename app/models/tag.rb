class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def self.most_popular
    Tag.all.sort_by {|tag| tag.pictures.length }.reverse
  end

  def self.top_three
    most_popular[0..2]
  end

  def self.trending
    Picture.order_by_date[0..9].sort_by do |pic|
  end
end
