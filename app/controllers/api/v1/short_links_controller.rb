class Api::V1::ShortLinksController < Api::V1::BaseController
  before_action :set_alexa_ranke, only: [ :show ]

  def index
    @shortLinks = ShortLink.all
  end

  def show
  end

  private

  def set_alexa_ranke
    @shortLinks = ShortLink.find(params[:url])
  end
end
