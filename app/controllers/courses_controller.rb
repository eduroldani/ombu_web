class CoursesController < ApplicationController

  def index
    if params.present?
      @courses = Course.all
      # @courses = Course.where(title: params[:search])
    else
      @courses = Course.all
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def new

  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
