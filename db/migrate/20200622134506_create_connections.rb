class CreateConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :connections do |t|
      t.integer :user_id
      t.string :names
      t.datetime :connection_date
      t.string :insta
      t.text :memory

      t.timestamps
    end
  end
end
