class AddFieldToProject < ActiveRecord::Migration
  def change
    add_column :projects, :language, :text
    add_column :projects, :github, :text
  end
end
