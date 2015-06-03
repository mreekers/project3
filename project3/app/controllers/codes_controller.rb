
class CodesController < ApplicationController


    def index
        @response = Typhoeus.get "https://community-united-states-code.p.mashape.com/US_Code/usc01_113-21.json",
            headers:{
                "X-Mashape-Key" => "0i9u6YbElXmshSiPOQupOS2HPs4ip1nKxPJjsnM0d37Os3dtLx",
                "Accept" => "text/plain"
        }






        
        # hash = JSON.parse(response.body)
        # respond_to do |format|
        #   format.html index.html.erb
        #   format.xml  { render :xml}
        #   format.json { render :json}

        # search = params[:q]
        # if search
        # # render :index 
        # # These code snippets use an open-source library.
            # @response = Typhoeus.get("https://community-united-states-code.p.mashape.com/US_Code/usc01_113-21.json", params: {s: search})
            # @codes = JSON.parse(response.body)["Search"]
            # render json: {message: 'Resource not found'}, status: 404
        
    end
end

# response = Typhoeus.get("https://community-united-states-code.p.mashape.com/US_Code/usc01_113-21.json")

