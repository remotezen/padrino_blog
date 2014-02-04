require 'carrierwave/orm/activerecord'

class Upload < ActiveRecord::Base
   mount_uploader :file, Uploader
  belongs_to :post
   def store_dir
     'public/images'
end
end
