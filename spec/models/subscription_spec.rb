require 'rails_helper'

RSpec.describe Subscription, type: :model do
  context "database columns" do
    it { is_expected.to have_db_column(:id)                     .of_type(:integer).with_options(primary: true) }
    it { is_expected.to have_db_column(:sub_type)               .of_type(:string) }
    it { is_expected.to have_db_column(:name)                   .of_type(:string) }
    it { is_expected.to have_db_column(:cost)                   .of_type(:float) }
  end

  context "associations" do
    it { is_expected.to belong_to(:statement) }
  end
end
