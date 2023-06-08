class StudentsController < ApplicationController

  def index
    students = if params[:name]
      Student.where("last_name LIKE :namae OR first_name LIKE :namae", {namae: params[:name]})
    else
      Student.all
    end
      
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
