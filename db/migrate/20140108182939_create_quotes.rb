class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :content
      t.string :author
      t.string :link

      t.timestamps
    end
  end
end
