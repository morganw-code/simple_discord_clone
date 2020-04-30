class MessagesController < ApplicationController
    before_action :authenticate_user!
    def index
    end
    
    def create
        @message = current_user.messages.create(message_params)
        if @message.errors.any?
            render plain: "error"
        else
            redirect_to "/"
        end
    end

    def new
    
    end

    def nuke
        Message.delete_all
        redirect_to "/"
    end

    private

    def message_params
        return params.require(:message).permit(:message)
    end
end