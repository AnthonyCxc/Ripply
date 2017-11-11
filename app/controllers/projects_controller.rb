class ProjectsController < ApplicationController
  def index
    @listings_pending = Project.where(project_status: 0)
    @listings_vote = Project.where(project_status: 1)
    @listings_working = Project.where(project_status: 2)
    @listings_complete = Project.where(project_status: 3)
  end

  def show 
    @listing = Project.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
