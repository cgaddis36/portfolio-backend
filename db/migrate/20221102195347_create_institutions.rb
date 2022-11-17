class CreateInstitutions < ActiveRecord::Migration[7.0]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :degree
      t.string :major
      t.string :graduation
      t.string :logo 
      
      t.timestamps
    end
  end
end
