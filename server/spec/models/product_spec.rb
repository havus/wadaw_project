# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'attributes' do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :info }
    it { is_expected.to respond_to :product_code }
    it { is_expected.to respond_to :batch }
    it { is_expected.to respond_to :stock }
    it { is_expected.to respond_to :price }
    it { is_expected.to respond_to :created_at }
    it { is_expected.to respond_to :updated_at }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :product_code }
    it { is_expected.to validate_presence_of :batch }
    it { is_expected.to validate_presence_of :stock }
  end
end
