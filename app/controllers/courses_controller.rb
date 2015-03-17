class CoursesController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 def index
 	# need to put the right folder also, use quotes
 	@courses = Course.all
 end

 def show
 	@course = Course.find(params[:id])
 	
 end
 
 def create
    @course =  Course.create(course_params.merge(owner_id: current_user.id))
    if @course.save
      redirect_to root_path
    else
      #render :action => 'new'
    end
  end

  def new
  	 @course = Course.new

  end

 def edit
    @course = Course.find params[:id]
  end

def update
    @course = Course.find params[:id]
    if @course.update_attributes(course_params)
      redirect_to course_path
    else
      render :action => :edit
    end
  end

private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def course_params
      params.require(:course).permit(:name, :description)
      
    end



end
