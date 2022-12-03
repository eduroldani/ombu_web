class Course < ApplicationRecord
  has_many :user_courses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :course_projects, dependent: :destroy

  include PgSearch::Model
    pg_search_scope :search_course,
    against: [ :title, :description ],
    using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

end
