class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def self.most_popular
    Tag.all.sort_by {|tag| tag.pictures.length }.reverse
  end

  def self.top_five
    most_popular[0..4]
  end

  def self.trending
    pic = Picture.limit(10).sort_by { |pic| pic.comments.length }.last

    pic.tags.sample
  end


end
