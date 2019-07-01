class Post < ApplicationRecord
  validates :subject, presence: true
end
