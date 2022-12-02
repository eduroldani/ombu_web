class Project < ApplicationRecord
  has_many :course_projects, dependent: :destroy
  
end
