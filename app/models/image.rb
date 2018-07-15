class Image < ApplicationRecord
  validates_presence_of :name, :url
end
