class CoursesController < ApplicationController

  def index
      if params[:search].present?
        @courses = Course.search_course(params[:search])
      else
        @courses = Course.all
      end
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end


  def create
    @course = Course.new(course_params)
    if @course.save
     redirect_to course_path(@course)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to course_path(@course)
     else
      render :new, status: :unprocessable_entity
     end
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :description, :photo)
  end

end
