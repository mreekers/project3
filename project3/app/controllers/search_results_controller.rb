class SearchResultsController < ApplicationController
 
 def index
    
  @crims =  Crim.search(params[:search])

 end
end 