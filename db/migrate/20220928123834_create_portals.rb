class CreatePortals < ActiveRecord::Migration[6.1]
  def change
    create_table :portals do |t|
      t.string :company_name
      t.string :applied_from
      t.date :date_of_application
      t.boolean :status

      t.timestamps
    end
  end
end
