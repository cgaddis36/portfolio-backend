class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :background
      t.string :github
      t.string :title
      t.string :email 
      t.string :phone
      
      t.timestamps
    end
  end
end
