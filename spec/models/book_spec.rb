# frozen_string_literal: true

require 'rails_helper'

describe Book, type: :model do
  describe '#create!' do
    let(:author) { create :author }

    subject { described_class.create!(author: author) }

    it 'should create setting uuid in id field' do
      expect { subject }.not_to raise_error
      expect(subject.id).to be_a(String)
      expect(subject.id).to match(/[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}/)
    end
  end

  describe '#author' do
    let(:author) { create :author }
    let!(:book) { create :book, author: author }

    subject { book.author }

    it 'should return an author' do
      expect(subject).to be_a(Author)
    end
  end
end
