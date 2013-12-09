class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :company
      t.string :url_path

      t.timestamps
    end
  end
end
