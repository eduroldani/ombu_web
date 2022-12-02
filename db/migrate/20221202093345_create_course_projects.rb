class CreateCourseProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :course_projects do |t|
      t.references :course, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
