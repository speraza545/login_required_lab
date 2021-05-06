class SessionsController < ApplicationController
    def new
    end 

    def create
        if params[:name] == nil || params[:name] == ""
            redirect_to controller: 'sessions', action: 'new'
        else
            session[:name] = params[:name]
        end
    end 

    def destroy
        session.delete :name
        redirect_to controller: 'application', action: 'home'
    end

end