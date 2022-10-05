class AddUserToPortal < ActiveRecord::Migration[6.1]
  def change
      add_reference :portals, :user
  end
end
