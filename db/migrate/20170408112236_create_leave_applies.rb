class CreateLeaveApplies < ActiveRecord::Migration
  def change
    create_table :leave_applies do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :leave_type
      t.string :session_name
      t.string :reason
      t.boolean :status
      t.references :user

      t.timestamps null: false
    end

    add_index :leave_applies, :user_id
    add_index :leave_applies, :status
  end
end
