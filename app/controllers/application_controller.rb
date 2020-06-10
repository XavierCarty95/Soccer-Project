class ApplicationController < ActionController::Base

before_action :authorized
helper_method :current_user
helper_method :logged_in?
helper_method :api
BLOG_API_KEY = ENV['blog_api_key'] 
    def current_user 
     
        User.find_by(id: session[:user_id])


    end 


    def logged_in? 

        !current_user.nil?
    end 

    def authorized 
     
        redirect_to '/welcome' unless  logged_in?
            
        end

    def api(name)
        # https://api-football-v1.p.rapidapi.com/v2/leagues/country/#{name}/2019
        # https://api-football-v1.p.rapidapi.com/v2/teams/league/{league_id}
        url = URI("https://api-football-v1.p.rapidapi.com/v2/teams/league/#{name}")
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'api-football-v1.p.rapidapi.com'
        request["x-rapidapi-key"] = BLOG_API_KEY
        response = http.request(request)
        
        return parse = JSON.parse(response.read_body)


    end 

    end 

