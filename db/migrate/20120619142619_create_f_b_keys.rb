class CreateFBKeys < ActiveRecord::Migration
  def change
    create_table :f_b_keys do |t|
      t.text        :key
      t.timestamps
    end
  end
end
