require 'spec_helper'

describe OrderItem do
  describe 'Database' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :created_at}
    it { is_expected.to have_db_column :updated_at}

    it { is_expected.to belong_to :order}
    it { is_expected.to belong_to :product}
  end
end
