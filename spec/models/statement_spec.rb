require 'rails_helper'
require 'json-schema'

RSpec.describe Statement, type: :model do
  context "database columns" do
    it { is_expected.to have_db_column(:id)                     .of_type(:integer).with_options(primary: true) }
    it { is_expected.to have_db_column(:generated)              .of_type(:datetime) }
    it { is_expected.to have_db_column(:due)                    .of_type(:datetime) }
    it { is_expected.to have_db_column(:from)                   .of_type(:datetime) }
    it { is_expected.to have_db_column(:to)                     .of_type(:datetime) }
  end

  context "associations" do
    it { is_expected.to have_many(:subscriptions) }
    it { is_expected.to have_many(:buy_and_keeps) }
    it { is_expected.to have_many(:calls) }
    it { is_expected.to have_many(:packages) }
    it { is_expected.to have_many(:rentals) }
  end

  context "#import_statement" do
    context "valid schema present" do
      before do
        json = JSON.parse File.read(Rails.root.join('spec','fixtures','bill.json'))
        @errors = JSON::Validator.fully_validate(JSON::parse(File.read(Rails.root.join('schemas', 'bill_schema.json'))), json, :errors_as_objects => true)
      end

      it "input schema present" do
        expect(@errors).to eql []
      end
    end

    # context "retreives"
  end
end
