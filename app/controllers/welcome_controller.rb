class WelcomeController < ApplicationController

  
  def index
    @keyword = params[:keyword]
    
    if @keyword.blank?
       @courses = Course.all  
    else
       @courses = Course.where(:name => @keyword)    
    end

  end
  
end




