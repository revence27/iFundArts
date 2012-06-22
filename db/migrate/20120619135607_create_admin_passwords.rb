class CreateAdminPasswords < ActiveRecord::Migration
  def change
    create_table :admin_passwords do |t|
      t.text        :sha1_pass
      t.text        :sha1_salt
      t.timestamps
    end
  end
end
