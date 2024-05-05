# frozen_string_literal: true

# Description: This file contains the controller for the home page.
class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home; end
end
