class Post < ApplicationRecord
  belongs_to :user
  validates :subject, presence: true
end