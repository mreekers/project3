
class CrimsController < ApplicationController
    attr_accessor :statute, :juryinst, :notes
 
    # validate :statute, presence: true, uniqueness: true
    # validate :juryinst, presence: true
    # validate :notes, presence: true

    # def search
    #     @crims = Crim.search(params[:search])

    #     if params[:search]
    #         @crims = Crim.search(:all, :conditions => ['statute LIKE ?',"%#{params[:search]}%"])
    #     else
    #         @crims = Crim.search(:all)
    #     end
    # end

    def index

        @crims = Crim.all
       
        # @crims = Crim.search(params[:search])
    end

    def new
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




 #   if params[:search].present? || params[:radius].present?
      #       search = Crim.search do
      #           fulltext params[:search]
      #   end
      #   @crim = search.results
      # else
      #   @crim = []