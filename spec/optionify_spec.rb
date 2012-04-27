require 'spec_helper'

class Basic
  include Siphre::Optionify
  option :cipher, '123'
end

describe Siphre::Optionify do

  subject { Basic }

  it "should give an option method to the class including it" do
    puts subject.class
    subject.should respond_to :option
  end

  it "should set the default value" do
    basic = subject.new
    basic.should respond_to :cipher
    basic.cipher.should == '123'
  end

end
