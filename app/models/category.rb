class Category < ApplicationRecord
  has_many :topics through: :topic_categories
  has_many :topic_categories
end
