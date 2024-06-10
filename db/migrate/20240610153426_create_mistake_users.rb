class CreateMistakeUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :mistake_users do |t|

      t.timestamps
    end
  end
end
