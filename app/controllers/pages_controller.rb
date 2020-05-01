class PagesController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @message = Message.new
        @messages = Message.all
        @users = User.all
    end

    def settings
        render plain: "woek"
    end
end