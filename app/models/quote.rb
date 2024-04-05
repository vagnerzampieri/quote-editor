# frozen_string_literal: true

# Description: This file contains the Quote model.
class Quote < ApplicationRecord
  validates :name, presence: true
end
