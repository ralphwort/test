require 'rails_helper'

RSpec.describe Package, type: :model do
  context "database columns" do
    it { is_expected.to have_db_column(:id)                     .of_type(:integer).with_options(primary: true) }
  end

  context "associations" do
    it { is_expected.to belong_to(:statement) }
  end
end
