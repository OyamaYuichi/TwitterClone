class Mouth < ApplicationRecord
  validates :content, presence: true
  # validates :content, length: {maximum: 140}
end
