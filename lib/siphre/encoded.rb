module Siphre

  class UnimplementedMethod < StandardError; end
  class Encoded

    def self.encode
      raise Siphre::UnimplementedMethod
    end

    def self.equal
      raise Siphre::UnimplementedMethod
    end

    def self.decode
      raise Siphre::UnimplementedMethod
    end

  end
end
