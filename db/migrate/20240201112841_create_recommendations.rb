class CreateRecommendations < ActiveRecord::Migration[6.1]
  def change
    create_table :recommendations do |t|
      t.string :full_name
      t.text :description

      t.timestamps
    end
  end
end
