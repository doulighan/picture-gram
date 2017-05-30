class User < ApplicationRecord
  has_secure_password
  has_many :pictures 
  has_many :comments

  def received_comments
    self.pictures.map { |pic| pic.comments } 
  end
end
