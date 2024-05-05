# frozen_string_literal: true

# Description: This file contains the User model.
class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  belongs_to :company

  def name
    email.split("@").first.capitalize
  end
end
