require 'spec_helper'

describe Category do
#   pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with a name" do
    category = Category.new(name:"New Category")
    expect(category).to be_valid
  end

  it "is invalid without a name" do
    category = Category.new(name:nil)
    expect(category).to have(1).errors_on(:name)
  end

  it "is invalid with a duplicate name" do
    Category.create(name:"category1")
    category = Category.new(name:"category1")
    expect(category).to have(1).errors_on(:name)
  end

end
