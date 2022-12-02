class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.date :date
      t.text :description
      t.string :category
      t.string :modality
      t.integer :minimum_age
      t.integer :max_age
      t.integer :capacity
      t.string :level
      t.string :location
      t.boolean :is_hide


      t.timestamps
    end
  end
end
