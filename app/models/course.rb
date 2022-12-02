class Course < ApplicationRecord
  has_many :user_courses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :course_projects, dependent: :destroy

end
