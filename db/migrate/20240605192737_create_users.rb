class CreateUsers < ActiveRecord::Migration[7.1]
  def up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
  def down
    drop_table :users
  end
end
