class Topic < ApplicationRecord
  has_many :messages
  has_many :categories through: :topic_categories
  has_many :topic_categories
end
