class SchoolClassesController < ApplicationController
  
 	def index
    @class = SchoolClass.all
	end

	def show
		@class = SchoolClass.find(params[:id])
	end

	def new
	  @class = SchoolClass.new
	end

	def create
	   @class = SchoolClass.create(post_params(:title, :room_number))
    redirect_to school_class_path(@class)
	end

	def update
    @class = SchoolClass.find(params[:id])
    @class.update(post_params(:title, :room_number))
    redirect_to school_class_path(@class)
	end

	def edit
    @class = SchoolClass.find(params[:id])
	end
	
	private
	
  def post_params(*args)
    params.require(:school_class).permit(*args)
  end
  
end