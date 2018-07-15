class Idea < ApplicationRecord
  validates_presence_of :title, :description

  belongs_to :user
  belongs_to :category
  has_many :idea_images
  has_many :images, through: :idea_images
end
