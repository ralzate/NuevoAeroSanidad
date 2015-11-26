class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:home, :contact, :help]

  





  def home
  	
  	
if params[:search].present?
  	search1 = (params[:search])
  	search = search1.capitalize
  	@patients = Patient. where("first_name like '%#{search}%'  or second_name like '%#{search}%' 
    or first_surname like '%#{search}%'  or second_surname like '%#{search}%' 
    or email like '%#{search}%' or document like '%#{search}%' or address like 
    '%#{search}%'")
end





if request.xhr?

render partial: 'personas', status: 200

end


  end

  def contact
  end

  def help
  end

  
end
