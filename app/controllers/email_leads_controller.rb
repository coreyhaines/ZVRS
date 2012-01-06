class EmailLeadsController < ApplicationController
  def index
    @leads = Lead.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @leads.to_json}
    end    
  end

  def new
    @lead = Lead.new
    @referral_key = params[:referral_key]
  end
  
  def create
    lead = Lead.create params[:lead]
    
    #Pseudo-code
    # separate from the lead created up above
    # find the lead for the referral key if it in the params[:referral_key]
    @referral_lead = Lead.find_by_referral_key(params[:referral_key])
    @referral_lead.add_another_signup! if @referral_lead
    # call the #add_another_signup! for that lead
    
    redirect_to lead_url(lead)
    
  end
  
  def show
    @lead = Lead.find(params["id"])
  end
end
