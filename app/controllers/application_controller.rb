class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  def current_user
    super || OpenStruct.new(full_name: 'Guest')
  end
end
