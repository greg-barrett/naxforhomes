class AddFeaturedtoProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :featured, :boolean, default: false
  end
end
