require "set"
SERIALS = Set.new
module Skynet
  class SerialGenerator
    CHARS = ('A'..'Z').to_a.freeze
    INTEGERS = ('0'..'9').to_a.freeze

    def generate
      serial = nil

      loop do
        serial = "#{CHARS.sample}#{CHARS.sample}#{INTEGERS.sample}#{INTEGERS.sample}#{INTEGERS.sample}"

        break if SERIALS.add?(serial)
      end

      serial
    end
  end
end
