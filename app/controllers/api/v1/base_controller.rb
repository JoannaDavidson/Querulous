class Api::V1::BaseController < ApplicationController
    include ActionController::HttpAuthentication::Token::ControllerMethods
    protect_from_forgery with: :null_session
  
    before_action :destroy_session
  
    def destroy_session
      request.session_options[:skip] = true
    end

end
