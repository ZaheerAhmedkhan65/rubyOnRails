class ContactformController < ApplicationController
  
  def show
    @contactforms = Contactform.all
  end

  def new
    @contactform = Contactform.new
  end

  def create
    @contactform = Contactform.new(contactform_params)
    if(@contactform.save)
    redirect_to root_path #redirects to home page
    else
    render :new
    end
    
  end

  private
  def contactform_params
    params.require(:contactform).permit(:user_name, :user_email, :user_message)
  end
  
end
