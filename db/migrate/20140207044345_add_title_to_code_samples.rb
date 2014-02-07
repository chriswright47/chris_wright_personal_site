class AddTitleToCodeSamples < ActiveRecord::Migration
  def change
    add_column :code_samples, :title, :string
  end
end
