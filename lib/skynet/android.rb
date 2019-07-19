module Skynet
  class Android
    def initialize
      @serial_generator = SerialGenerator.new
    end

    def numero
      @serial_number ||= @serial_generator.generate
    end

    def resetar
      @serial_number = @serial_generator.generate
    end

    def objetivo
      @objetivo ||= MissionAssigner.new.mission
    end
  end
end
