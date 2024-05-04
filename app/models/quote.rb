# frozen_string_literal: true

# Description: This file contains the Quote model.
class Quote < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  broadcasts_to ->(quote) { "quotes" }, inserts_by: :prepend
end
