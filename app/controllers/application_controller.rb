class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
  protect_from_forgery with: :exception

  before_action :get_subdomain

  def current_user
    super || OpenStruct.new(full_name: 'Guest')
  end

  private

    def user_not_authorized
      flash[:alert] = "You are not authorized to access this page."
      redirect_to(request.referrer || root_path)
    end

    def get_subdomain
      puts "The Subdomain is:"
      puts request.subdomain
      raise
    end
end