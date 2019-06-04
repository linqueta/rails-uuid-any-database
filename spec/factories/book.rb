# frozen_string_literal: true

FactoryBot.define do
  factory :book, class: Book do
    title { Faker::Book.title }
  end
end
