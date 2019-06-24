class AddAbstractTranslationToProjects < ActiveRecord::Migration[5.2]
  def change
  reversible do |dir|
    dir.up do
      Project.add_translation_fields! abstract: :text
    end

    dir.down do
      remove_column :project_translations, :abstract
    end
  end
end
end
