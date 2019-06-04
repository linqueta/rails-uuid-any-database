# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  default_scope { order(:created_at) }
  before_create -> { self.id = SecureRandom.uuid }, if: -> { !id }
end
