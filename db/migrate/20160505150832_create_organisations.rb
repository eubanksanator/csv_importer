class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
