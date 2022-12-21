class SchoolsController < ApplicationController

  def index
    @schools = School.all
  end

  def new
    @school = School.new
    # @school.save
  end

  def show
    @school = School.find(params[:id])
  end

  def create
    @school = School.new(school_params)
    if @school.save
    redirect_to "/schools"
    else
    render :new
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    @school.update(school_params)
    redirect_to "/schools"
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to "/schools"
  end

  private

  def school_params
    params.require(:school).permit(:name, :rating, :address)
  end

end
