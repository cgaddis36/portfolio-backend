class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :github
      t.string :description
      t.string :frameworks, array: true, default: []
      t.string :hosts, array: true, default: []

      t.timestamps
    end
  end
end
