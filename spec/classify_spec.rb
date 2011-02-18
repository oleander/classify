require 'spec_helper'

module MyString; end

describe Classify do
  it "should return a constant" do
    Classify.it!("my_string").should eq(MyString)
  end
end