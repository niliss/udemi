class SubscriptionsController < ApplicationController

  def subscribe
  	@course = Course.find(params[:id])
  	current_user.courses << @course
  	redirect_to course_path
  end
  

  def unsubscribe
  	@course = Course.find(params[:id])
  	current_user.courses.delete(@course)
  	redirect_to course_path  
  end

 

end
