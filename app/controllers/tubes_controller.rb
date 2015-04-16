class TubesController < ApplicationController
	def index
		@tubes = Tube.all
	end

	
end
