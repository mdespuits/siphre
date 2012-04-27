module Siphre

  class UnimplementedMethod < StandardError; end

  class Encoded

    include Optionify

    def self.encode
      raise UnimplementedMethod, "The `encode' has not been defined"
    end

    def self.equal
      raise UnimplementedMethod, "The `equal' has not been defined"
    end

    def self.decode
      raise UnimplementedMethod, "The `decode' has not been defined"
    end

  end
end
