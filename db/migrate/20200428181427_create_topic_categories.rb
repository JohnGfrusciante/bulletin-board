class CreateTopicCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_categories do |t|

      t.timestamps
    end
  end
end
