class CreateExecutors < ActiveRecord::Migration
  def change
    create_table :executors do |t|
      t.references :project, index: true
      t.references :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
