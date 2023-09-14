class BlueBackgroundController < ApplicationController
    def index
    end

    def show_by_keyword
        # Retrieve records based on the keyword
        keyword = params[:keyword]
        @results = TodoItem.where("title ILIKE ?", "%#{keyword}%")
    
        # You can customize this to match your specific model and search criteria
    end
end
