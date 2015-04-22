class Student < ActiveRecord::Base
  YEAR = ["grade 1", "grade 2", "grade 3", "grade 4", "grade 5", "grade 6"]

  validates :student_code, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :year, presence: true

  has_many :subjects

  def to_s
    "#{self.first_name} #{self.last_name}"
  end
end
