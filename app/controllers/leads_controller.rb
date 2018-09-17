class LeadsController < ApplicationController
  
  
  def index
  @lead = Lead.new
  end

  def create
  @lead = Lead.new lead_params
  if @lead.save
    redirect_to root_path , notice: 'Sucess'
  else
redirect_to root_path, notice: "Failed"
  end
  end


  private
def lead_params
params.require(:lead).permit(:email)
end



end
