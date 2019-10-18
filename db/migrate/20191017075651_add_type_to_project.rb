class AddTypeToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :ptype, :integer, null: false, default: 0
    add_column :projects, :description, :string
  end
end
