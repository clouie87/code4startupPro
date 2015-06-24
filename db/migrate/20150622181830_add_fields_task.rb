class AddFieldsTask < ActiveRecord::Migration
  def self.up
    change_table :tasks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tasks, :image
  end
end
