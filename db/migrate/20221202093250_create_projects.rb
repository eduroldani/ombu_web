class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :level
      t.string :category

      t.timestamps
    end
  end
end
