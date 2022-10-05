class AddUsertoPortal < ActiveRecord::Migration[6.1]
  def change
    add_reference :portals, :user
    change_column :portals, :status, :boolean, :default => false
  end
end
