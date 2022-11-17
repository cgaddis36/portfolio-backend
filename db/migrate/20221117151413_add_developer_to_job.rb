class AddDeveloperToJob < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs, :developer, null: false, foreign_key: true
  end
end
