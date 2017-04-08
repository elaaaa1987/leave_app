class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :leave_type
      t.string :session_name
      t.text :reason
      t.boolean :status
      t.references :user

      t.timestamps null: false
    end
    add_index :leaves, :user_id
    add_index :leaves, :status
  end
end
