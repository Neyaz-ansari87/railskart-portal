class AddColumnToPortals < ActiveRecord::Migration[6.1]
  def change
    add_column :portals, :applied_from_link, :string
  end
end
