class Item < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  #attr_accessible :image, :image_cache, :remove_image
end
