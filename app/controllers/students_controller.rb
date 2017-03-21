class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student ||= Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      flash[:success] = t('.create_success')
      redirect_to students_path
    else
      flash[:error] = 'Errorrrrr'
    end
  end

  def student_params
    params.require(:student).permit(:name)
  end
end
