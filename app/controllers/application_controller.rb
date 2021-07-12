class ApplicationController < ActionController::Base
    before_action :usuario
    layout :layout

    def usuario
	    authenticate_user!
	end

     def layout
		if current_user != nil
			@layout = "application"
		else
			@layout = "applicationlogin" 
		end
	end
end
