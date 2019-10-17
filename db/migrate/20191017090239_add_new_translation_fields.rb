class AddNewTranslationFields < ActiveRecord::Migration[6.0]
  def self.up
      Project.create_translation_table!({
        :ptype => :string,
        :description => :text
      }, {
        :remove_source_columns => true
      })
    end

    def self.down
      Project.drop_translation_table!
    end
  end
