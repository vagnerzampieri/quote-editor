# frozen_string_literal: true

# Description: This file contains the Company model.
class Company < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :quotes, dependent: :destroy

  validates :name, presence: true
end
