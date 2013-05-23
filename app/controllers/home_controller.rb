class HomeController < ApplicationController
  def index
    @response = HTTParty.get('http://api.meetup.com/2/events/?status=upcoming&order=time&limited_events=False&group_urlname=startupchile&desc=false&offset=0&format=json&page=20&fields=&sig_id=12911163&sig=014424a15746b3acbbd04395abc44da6d1750774')
    @response = @response["results"]
  end
end
