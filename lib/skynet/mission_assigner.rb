module Skynet
  class MissionAssigner
    MISSIONS = [
      "Search and destroy",
      "Protect the resistance",
      "Kill Sarah Connor",
      "Be Arnold Schwarzenegger"
    ].freeze

    def mission
      MISSIONS.sample
    end
  end
end
