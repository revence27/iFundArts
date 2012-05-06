class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text        :name,          :null => false
      t.text        :image,         :null => false
      t.text        :description,   :null => false
      t.datetime    :ends_at,       :null => false
      t.integer     :account_id,    :null => false
      t.integer     :category_id,   :null => false
      t.timestamp   :funded_at,     :null => true, :default => nil
      t.integer     :needs,         :null => false
      t.integer     :has_got,       :null => false, :default => 0
      t.timestamps
    end
  end
end
