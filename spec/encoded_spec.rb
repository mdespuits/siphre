require 'spec_helper'

describe Siphre::Encoded do
  describe 'inheritable methods' do

    subject { Siphre::Encoded }

    it { should respond_to :encode }
    it { should respond_to :equal }
    it { should respond_to :decode }
    it { should respond_to :option }

    it 'should raise an error as they are intended to be implemented on every class' do
      %w[encode equal decode].each do |method|
        expect { subject.send(method.to_sym) }.to raise_error Siphre::UnimplementedMethod
      end
    end

    it 'should allow setting of siphre options' do
      class Basic < Siphre::Encoded
        option :cipher, '1234567890'
      end

      Basic.new.should respond_to :cipher
      Basic.new.cipher.should == '1234567890'
    end

  end
end
