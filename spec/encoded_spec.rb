require 'spec_helper'

describe Siphre::Encoded do
  describe 'inheritable methods' do

    subject { Siphre::Encoded }

    it { should respond_to :encode }
    it { should respond_to :equal }
    it { should respond_to :decode }

    it 'should raise an error as they are intended to be implemented on every class' do
      expect { subject.encode }.to raise_error Siphre::UnimplementedMethod
      expect { subject.equal }.to raise_error Siphre::UnimplementedMethod
      expect { subject.decode }.to raise_error Siphre::UnimplementedMethod
    end

  end
end
