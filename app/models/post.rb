class Post < ApplicationRecord
  belongs_to :user
  validates :subject, presence: true

  mount_uploader :image, AvatarUploader
end
