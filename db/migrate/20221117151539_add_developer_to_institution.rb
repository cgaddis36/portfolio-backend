class AddDeveloperToInstitution < ActiveRecord::Migration[7.0]
  def change
    add_reference :institutions, :developer, null: true, foreign_key: true
  end
end
