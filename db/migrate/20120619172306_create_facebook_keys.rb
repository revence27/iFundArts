class CreateFacebookKeys < ActiveRecord::Migration
  def change
    create_table :facebook_keys do |t|
      t.text          :key
      t.timestamps
    end
  end
end
