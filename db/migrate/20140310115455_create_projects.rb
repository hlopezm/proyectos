class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :portfolio
      t.string :image_url
      t.string :folio
      t.string :authorization_number
      t.string :work_number
      t.integer :expected_amount, :precision => 8, :scale => 2
      t.integer :authorized_amount, :precision => 8, :scale => 2
      t.string :location
      t.string :executor

      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
