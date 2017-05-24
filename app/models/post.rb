class Post < ActiveRecord::Base
  validates :content, presence: true
  validates :post_image, presence: true

  belongs_to :user
  mount_uploader :post_image, PostImageUploader
end
