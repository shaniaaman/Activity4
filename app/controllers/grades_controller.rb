class GradesController < ApplicationController
    
	def index
    	@grades = Grade.all
 	end
 	
 	def show
 		@grade = Grade.find(params[:id])
 	end
 	
 	def new
    	@grade = Grade.new
    end
    
    def create
    	@grade = Grade.new
    	@grade.name = params[:grade][:name]
		@grade.course = params[:grade][:course]
		@grade.id_num = params[:grade][:id_num]
    	@grade.prl = params[:grade][:prl]
    	@grade.mid = params[:grade][:mid]
    	@grade.prf = params[:grade][:prf]
    	@grade.fin = params[:grade][:fin]
    	
    	@grade.save
    	
    	redirect_to "/grades/#{@grade.id}"
    end
    
 	
end
