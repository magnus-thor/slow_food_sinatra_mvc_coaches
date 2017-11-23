require 'spec_helper'

describe Product do
  it {is_expected.to have_db_column :name}
  it {is_expected.to have_db_column :price}
  it {is_expected.to have_db_column :description}
  it {is_expected.to have_db_column :category}

  describe 'validations' do
    it {is_expected.to validate_presence_of :name}
    it {is_expected.to validate_presence_of :description}
    it {is_expected.to validate_inclusion_of(:category).in_array(Product::VALID_CATEGORIES)}


  end
end
