# frozen_string_literal: true

FactoryBot.define do
  factory :author, class: Author do
    name { Faker::Book.author }
  end
end
