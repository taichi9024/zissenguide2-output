class CreateAdminMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_members do |t|
      t.string :email, null: false
      t.string :hash_password, null: false
      t.boolean :suspend, null: false

      t.timestamps
    end
  end
end
