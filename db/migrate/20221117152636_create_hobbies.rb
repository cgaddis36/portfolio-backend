class CreateHobbies < ActiveRecord::Migration[7.0]
  def change
    create_table :hobbies do |t|
      t.references :developer, null: false, foreign_key: true
      t.string :name
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
