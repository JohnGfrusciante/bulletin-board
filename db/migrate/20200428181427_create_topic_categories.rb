class CreateTopicCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :topic_categories do |t|
      t.references :topic,             null: false, foreign_key: true
      t.references :category,             null: false, foreign_key: true

      t.timestamps
    end
  end
end
