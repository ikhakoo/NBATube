class TubesController < ApplicationController
	def index
		@tubes = Tube.all
	end

	def new
    @tube = Tube.new
  end

  def create
    # make a new tube with what tube_params returns (which is a method we're calling)
    @tube = Tube.new(tube_params)
    if @tube.save
      # if the save for the tube was successful, go to index.html.erb
      redirect_to tubes_url
    else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)
      render :new
    end
  end

  private
  def tube_params
    params.require(:tube).permit(:source, :title, :url)
  end
end
