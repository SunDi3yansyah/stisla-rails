require "stisla/rails/version"

module Stisla
  module Rails
    class Error < StandardError; end

    class << self
      def load!
        if rails?
          register_rails_engine
        end
      end

      def rails?
        defined?(::Rails)
      end

      def register_rails_engine
        require "stisla/rails/engine"
      end
    end
  end
end

Stisla::Rails.load!
