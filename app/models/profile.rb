class Profile < ApplicationRecord
  mount_uploader :image, AvatarUploader
  belongs_to :user
  validates :first_name, presence: true
end
