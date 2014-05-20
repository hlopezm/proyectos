class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :folio
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.string :address

      t.timestamps
    end
  end
end
