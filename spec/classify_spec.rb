# encoding: UTF-8
require 'spec_helper'

module Therandomstring; end
module MyRandomString; end
module A1; end
module My1A; end

describe Classify do
  it "should return a constant" do
    Classify.it!("my_random_string").should eq(MyRandomString)
    Classify.it!("a_1").should eq(A1)
    Classify.it!("my_1_a").should eq(My1A)
  end
  
  it "should raise an error if the param contains non valid data" do
    ["my::string", "_value_string", "my_string ", "string_ö_string", nil, Object, "", 1, "1_string", "string_", "_string_"].each do |string|
      lambda {
        Classify.it!(string)
      }.should raise_error(ArgumentError)
    end
  end
  
  it "should work without underscore" do
    Classify.it!("therandomstring").should eq(Therandomstring)
  end
  
  it "should work on a half done string" do
    ["my_randomString", "myRandomString", "MyRandomString", "My_Random_String"].each do |string|
      Classify.it!(string).should eq(MyRandomString)
    end
  end
end