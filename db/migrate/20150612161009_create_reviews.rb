class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :project, index: true
      t.references :user, index: true
      t.text :comment
      t.datetime :created_at
      t.integer :star

      t.timestamps null: false
    end
    add_foreign_key :reviews, :projects
    add_foreign_key :reviews, :users
  end
end
