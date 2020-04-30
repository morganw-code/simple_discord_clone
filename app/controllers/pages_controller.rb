class PagesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @message = Message.new
    end

    def settings
    end
end