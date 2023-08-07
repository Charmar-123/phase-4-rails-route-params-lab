class StudentsController < ApplicationController

  def index

    if params[:name] 
      render json: Student.find_by(last_name: params[:name])
     else 
      students = Student.all
      render json: students
    
    end
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

end
