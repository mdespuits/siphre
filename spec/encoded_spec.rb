require 'spec_helper'

describe Siphre::Encoded do
  describe 'inheritable methods' do

    it 'should define three class methods for subclasses to implement' do
      Siphre::Encoded.should respond_to :encode
      Siphre::Encoded.should respond_to :equal
      Siphre::Encoded.should respond_to :decode
    end

    it 'should raise an error as they are intended to be implemented on every class' do
      expect { Siphre::Encoded.encode }.to raise_error Siphre::UnimplementedMethod
      expect { Siphre::Encoded.equal }.to raise_error Siphre::UnimplementedMethod
      expect { Siphre::Encoded.decode }.to raise_error Siphre::UnimplementedMethod
    end

  end
end
