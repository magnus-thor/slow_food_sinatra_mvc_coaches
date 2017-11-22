require 'spec_helper'

describe Product do
  it {is_expected.to have_db_column :name}
  it {is_expected.to have_db_column :price}
  it {is_expected.to have_db_column :description}
end
