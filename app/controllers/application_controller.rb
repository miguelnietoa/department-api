class ApplicationController < ActionController::API
  include Response

  def index
    json_response(message: 'Hello World!')
  end
end
