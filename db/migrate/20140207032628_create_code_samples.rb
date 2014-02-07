class CreateCodeSamples < ActiveRecord::Migration
  def change
    create_table :code_samples do |t|
      t.text :description
      t.text :content

      t.timestamps
    end
  end
end
