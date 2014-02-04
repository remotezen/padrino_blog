require 'dragonfly'
class Post < ActiveRecord::Base
  mount_uploader :image, Uploader
  belongs_to :account
  validates_presence_of :title
  validates_presence_of :body
  #dragonfly_accessor :image
end
