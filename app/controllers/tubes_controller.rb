class TubesController < ApplicationController
	def index
		@tubes = Tube.all
	end

	def new
  end

  def create
    render :text => "Saving a video. URL: #{params[:url]}, Title: #{params[:title]}, Source: #{params[:source]}"
  end
end
