# frozen_string_literal: true

# Description: This file contains the Quote model.
class Quote < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  after_create_commit { broadcast_prepend_to "quotes" }
end
