class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text        :name,          :null => false
      t.text        :image,         :null => false
      t.text        :description,   :null => false
      t.datetime    :ends_at,       :null => false
      t.integer     :account_id,    :null => false
      t.integer     :needs,         :null => false
      t.timestamps
    end
  end
end