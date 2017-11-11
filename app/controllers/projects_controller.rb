class ProjectsController < ApplicationController
  def index
    @listings_pending = Project.where(project_status: 0)
    @listings_vote = Project.where(project_status: 1)
    @listings_working = Project.where(project_status: 2)
    @listings_complete = Project.where(project_status: 3)
  end

  def show 
    @listing = ProjectCause.find(params[:id])
    # @donation = Donation.where(project_id: params[:id])
    @total_donation = 85
    # @total_donation = @donation.sum(:donation_amount)
    @progress_percent = (@total_donation.to_f / @listing.donation_goal.to_f * 100.0).to_i
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
