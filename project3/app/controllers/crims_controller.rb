
class CrimsController < ApplicationController
    attr_accessor :statute, :juryinst, :notes
 
    # validate :statute, presence: true, uniqueness: true
    # validate :juryinst, presence: true
    # validate :notes, presence: true

    def search
        @crims = Crim.search(params[:search])
    end

    def index
        @crims = Crim.all


      #   if params[:search].present? || params[:radius].present?
      #       search = Crim.search do
      #           fulltext params[:search]
      #   end
      #   @crim = search.results
      # else
      #   @crim = []
      #   end
    end

    def show
        @crim = Crim.find(params[:id])
    end

    def create
        @crim = Crim.new(params.require(:crim).permit(:statute, :juryinst, :notes))
 
        @crim.save
        redirect_to @crim
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