class Topic < ApplicationRecord
  has_many :messages
  has_many :topic_categories
  has_many :categories, through: :topic_categories

  def self.search(search)
    if search
      Topic.joins(:messages).where(['title LIKE ? OR text LIKE ?', "%#{search}%", "%#{search}%"])
    else
      Topic.all
    end
  end

end
