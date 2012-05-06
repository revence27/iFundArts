class CreateProjectCategories < ActiveRecord::Migration
  def change
    create_table :project_categories do |t|
      t.text        :name
      t.timestamps
    end
  end
end
