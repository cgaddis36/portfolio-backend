class AddDeveloperToProject < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :developer, null: false, foreign_key: true
  end
end
