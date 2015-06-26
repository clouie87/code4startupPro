class AddLiveSiteToTask < ActiveRecord::Migration
  def change
  	add_column :tasks, :live, :boolean
  end
end
