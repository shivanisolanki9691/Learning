class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string :full_name
      t.string :image
      t.text :bio

      t.timestamps
    end
  end
end
