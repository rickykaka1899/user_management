class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.integer :memory
      t.integer :instances
      t.string :framework
      t.string :runtime
      t.references :user

      t.timestamps
    end
    add_index :apps, :user_id
  end
end
