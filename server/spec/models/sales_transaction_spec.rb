# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SalesTransaction, type: :model do
  describe 'attributes' do
    it { is_expected.to respond_to :product_id }
    it { is_expected.to respond_to :customer_name }
    it { is_expected.to respond_to :quantity }
    it { is_expected.to respond_to :transaction_at }
    it { is_expected.to respond_to :total_price }
    it { is_expected.to respond_to :created_at }
    it { is_expected.to respond_to :updated_at }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :customer_name }
    it { is_expected.to validate_presence_of :quantity }
  end

  describe 'scopes' do
    describe '#sales_in_month' do
      let_it_be(:first_transaction)   { create(:sales_transaction) }
      let_it_be(:second_transaction)  { create(:sales_transaction) }
      let_it_be(:third_transaction) do
        create(:sales_transaction, transaction_at: Date.today - 1.month)
      end

      it 'should return transaction correctly' do
        month = Date.today.month

        expect(described_class.sales_in_month(month)).to include first_transaction
        expect(described_class.sales_in_month(month)).to include second_transaction
        expect(described_class.sales_in_month(month)).to_not include third_transaction
      end
    end
  end

  describe 'instance_methods' do
    let_it_be(:first_transaction)   { create(:sales_transaction) }
    let_it_be(:second_transaction)  { create(:sales_transaction) }
    let_it_be(:third_transaction) do
      create(:sales_transaction, transaction_at: Date.today - 1.month)
    end

    describe '#total_revenues' do
      it 'should return the correctly total price' do
        expected_amount = (
          first_transaction.total_price +
          second_transaction.total_price +
          third_transaction.total_price
        )
        expect(described_class.total_revenues).to eq expected_amount
      end
    end
  end
end
