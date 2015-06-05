
class CrimsController < ApplicationController
    attr_accessor :statute, :juryinst, :notes
 
 

    def search
        
    end

    def index

        # @crim = Crim.all
       
        @crims = Crim.search(params[:search])
       
    end

    def new
        @crims = Crim.all
        @crim = Crim.new

    end

    def show
        @crim = Crim.find(params[:id])
    end

    def create
        @crim = Crim.new(params.require(:crim).permit(:statute, :juryinst, :notes))
        
        @crim.save
        if @crim.save
            redirect_to :action => 'show', :id => @crim
        else
            render :action => 'new'
        end
        # redirect_to @crim
    end

    def destroy
        @crim = Crim.find(params[:id])
        @crim.destroy
 
        redirect_to crims_path
    end


private
    def crim_params
        params.require(:crim).permit(:statute, :juryinst, :notes)
    end

end
