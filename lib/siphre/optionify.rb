module Siphre
  module Optionify

    def self.included(klass)
      klass.extend ClassMethods
    end

    module ClassMethods
      def option(name, value)
        class_eval do
          define_method(name) do
            value
          end
        end
      end
    end

  end
end
