class AddAbstractToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :abstract, :text
  end
end
