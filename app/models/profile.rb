class Profile < ApplicationRecord
  has_one_attached :profile_image
  
  # def image_url
  #   image.attached? ? url_for(image) : nil
  # end

  # user.avatar.url これをフロントに渡す
end