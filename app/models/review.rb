class Review < ApplicationRecord
  belongs_to :island
  validates :content, length: { minimum: 20 }
end
