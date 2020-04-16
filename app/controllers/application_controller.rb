class ApplicationController < ActionController::Base

before_action :authorized
helper_method :current_user
helper_method :logged_in?
helper_method :api
    def current_user 
     
        User.find_by(id: session[:user_id])


    end 


    def logged_in? 

        !current_user.nil?
    end 

    def authorized 
     
        redirect_to '/welcome' unless  logged_in?
            
        end

    def api 

        url = URI("https://api-football-v1.p.rapidapi.com/v2/teams/league/2")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'api-football-v1.p.rapidapi.com'
        request["x-rapidapi-key"] = 'e2a6a5a7a5msh205f51dc28acb98p1ae29ajsn7662dae6283c'
        response = http.request(request)
        
        return parse = JSON.parse(response.read_body)


    end 

    end 

