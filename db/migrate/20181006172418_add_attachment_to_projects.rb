class AddAttachmentToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :attachment, :string

  end
end
