class PagesController < ApplicationController
  def index
    @subjects = Subject.limit(5)
    @students = Student.limit(5)
    @studentsubjects = StudentSubject.limit(5)

  end
end