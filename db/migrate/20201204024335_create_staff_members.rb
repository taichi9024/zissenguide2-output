class CreateStaffMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_members do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :hash_password, null: false
      t.date :start_date, null: false
      t.date :end_date
      t.boolean :suspend, null: false, default: false

      t.timestamps
    end
  end
end
