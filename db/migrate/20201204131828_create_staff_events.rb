class CreateStaffEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_events do |t|
      t.references :staff_member,null: false, foreign_key: true
      t.string :type, null: false
      t.datetime :created_at, null: false
    end
    add_index :staff_events,  :created_at
  end
end
