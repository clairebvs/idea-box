class Image < ApplicationRecord
  validates_presence_of :name, :url

  has_many :idea_images
  has_many :ideas, through: :idea_images
end
