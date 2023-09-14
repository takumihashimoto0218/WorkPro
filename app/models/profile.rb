class Profile < ApplicationRecord
  has_one_attached :image
  
  def image_url
    image.attached? ? url_for(image) : nil
  end

  # user.avatar.url これをフロントに渡す
end