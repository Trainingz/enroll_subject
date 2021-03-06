class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create 
    @student = Student.new(student_params)

    if @student.save
      redirect_to students_path
    else
      render "new"
    end
  end

  def show
    @student = Student.find(params[:id])
    @studentsubjects = StudentSubject.where("student_id = ?", @student.id)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update 
    @student = Student.find(params[:id])

    if @student.update_attributes(subject_params)
      redirect_to students_path
    else
      render "edit"
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end


  def student_params
    params.require(:student).permit!
  end
end