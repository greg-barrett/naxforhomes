class AddTranslationToFeatures < ActiveRecord::Migration[6.0]
  def change
    add_column :features, :project_id, :integer
    reversible do |dir|
      dir.up do
        Feature.create_translation_table! :description => {:type => :text}
      end

      dir.down do
        Feature.drop_translation_table!
      end
    end
  end
end
