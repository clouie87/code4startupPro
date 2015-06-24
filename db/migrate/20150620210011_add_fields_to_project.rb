class AddFieldsToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :tag, :integer
  	add_column :projects, :date, :string
  end
end
