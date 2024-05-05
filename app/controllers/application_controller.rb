# frozen_string_literal: true

# Description: This file contains global settings for all controllers.
# This file is used to authenticate users before they can access any page.
# It is a good practice to have a before_action in the ApplicationController
# to ensure that all controllers are protected by the same authentication.
class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :devise_controller?

  private

  def current_company
    @current_company ||= current_user.company if user_signed_in?
  end
  helper_method :current_company
end
