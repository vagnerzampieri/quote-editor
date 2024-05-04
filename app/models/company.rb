# frozen_string_literal: true

# Description: This file contains the Company model.
class Company < ApplicationRecord
  validates :name, presence: true
end
