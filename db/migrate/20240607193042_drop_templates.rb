class DropTemplates < ActiveRecord::Migration[7.1]
  def up
      drop_table :templates
  end
  def down
    create_table :templates do |t|
      t.string :name
      t.integer :severity
      t.text :description
      t.timestamps
  end
end
end
