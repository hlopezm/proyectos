class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :portfolio
      t.string :image_url
      t.string :folio_number
      t.string :authorization_number
      t.string :contract_number
      t.string :contract_modified
      t.integer :expected_amount, :precision => 8, :scale => 2
      t.integer :authorized_amount, :precision => 8, :scale => 2
      t.integer :economy, :precision => 8, :scale => 2
      t.string :location
      t.integer :goal
      t.string :unit
      t.string :company
      t.string :zona
      t.string :status
      t.string :delay
      t.string :contact
      t.string :observations

      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
