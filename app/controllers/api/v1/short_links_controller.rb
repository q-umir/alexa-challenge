
require 'rest-client'

class Api::V1::ShortLinksController < Api::V1::BaseController
  before_action :set_alexa_ranke, only: [ :show ]

  def index
    url = "https://awis.api.alexa.com/api?Action=UrlInfo&ResponseGroup=Rank&Output=json&Url=cluvi.co"
    response = RestClient::Request.execute(
      :method => :get,
      :url => url,
      :headers => {x_api_key: '8T7SlYd7Tp16a9VPBovC26LXGhosXjeM97CLbUUv'}
    )

     p results = JSON.parse(response)
     alexa = results['Awis']['Results']['Result']['Alexa']
     alexa['TrafficData']['alexa_rank']
     render json: { rank: 'hola' }
  end

  def show

  end

  private

  def set_alexa_ranke
    @shortLinks = ShortLink.find(params[:url])
  end
end
