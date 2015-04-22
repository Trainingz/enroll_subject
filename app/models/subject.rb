class Subject < ActiveRecord::Base
  LEVEL = ["grade 1", "grade 2", "grade 3", "grade 4", "grade 5", "grade 6"]
  validates :code, presence: true
  validates :title, presence: true
  validates :level, presence: true

  has_many :students
end
