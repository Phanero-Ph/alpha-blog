class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum: 100}
  validates :description, presence: true, length: {minimum: 20, maximum: 400}
  validates :author, presence: true, length: {minimum: 6, maximum: 50}
end



