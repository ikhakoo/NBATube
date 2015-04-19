class TubesController < ApplicationController
	def index

	end

  def show
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

  def edit
    @tube = Tube.find(params[:id])
  end

  def update
    @tube = Tube.find(params[:id])

    if @tube.update_attributes(tube_params)
      redirect_to "/tubes"
    else
      render :edit
    end
  end

  def destroy
    @tube = Tube.find(params[:id])
    @tube.destroy
    redirect_to tubes_url
  end

  private
  def tube_params
    params.require(:tube).permit(:source, :title, :url)
  end
end
