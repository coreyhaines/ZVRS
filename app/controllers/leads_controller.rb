class LeadsController < ApplicationController
  def index
    @leads = Lead.all
  end

  def new
    @lead = Lead.new
  end

  def create
    lead = Lead.create(params[:lead])
    redirect_to lead_url(lead)
  end

  def show
    @lead = Lead.find(params[:id])
  end
end
