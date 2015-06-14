class ChangeTagInTask < ActiveRecord::Migration
  def change
  	change_column :tasks, :tag, :integer
  end
end
