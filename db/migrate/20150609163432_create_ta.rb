class CreateTa < ActiveRecord::Migration
  def change
    create_table :ta do |t|
      t.string :title
      t.string :video
      t.boolean :header, :null => false, :default => false
      t.string :tag
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :ta, :projects
  end
end
