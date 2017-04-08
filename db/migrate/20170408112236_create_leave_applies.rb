class CreateLeaveApplies < ActiveRecord::Migration
  def change
    create_table :leave_applies do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :leave_type
      t.string :session_name
      t.string :reason
      t.boolean :status

      t.timestamps null: false
    end
  end
end
