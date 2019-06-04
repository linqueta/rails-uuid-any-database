# frozen_string_literal: true

require 'rails_helper'

describe Author, type: :model do
  describe '#create!' do
    subject { described_class.create! }

    it 'should create setting uuid in id field' do
      expect { subject }.not_to raise_error
      expect(subject.id).to be_a(String)
      expect(subject.id).to match(/[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}/)
    end
  end

  describe '#books' do
    let(:author) { create :author }

    subject { author.books }

    context 'without books' do
      it 'should return an empty array' do
        expect(subject.empty?).to be_truthy
      end
    end

    context 'with some books' do
      let!(:books) { 2.times.map { create :book, author: author } }

      it 'should return an array with 2 books' do
        expect(subject.length).to eq(2)
        expect(subject.all? { |b| b.is_a?(Book) }).to be_truthy
      end
    end
  end
end
