class CreateProjectsKnowledges < ActiveRecord::Migration[7.0]
  def change
    create_table :projects_knowledges do |t|
      t.string :slides
      t.string :code
      t.string :information
      t.string :tips
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
