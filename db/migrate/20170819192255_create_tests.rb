class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :login
      t.string :notes

      t.timestamps null: false
    end
  end
end
