class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :industry
      t.string :company
      t.string :summary
      t.string :start_date
      t.string :end_date
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
