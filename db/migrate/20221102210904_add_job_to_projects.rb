class AddJobToProjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :job, null: true, foreign_key: true
  end
end
