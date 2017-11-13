class DonationsController < ApplicationController
  def index
  end

  def new
    @donation = Donation.new
  end

  def edit
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      redirect_to :root #link to braintree payment
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def donation_params
    params.require(:donation).permit(:donation_amount)
  end
end

