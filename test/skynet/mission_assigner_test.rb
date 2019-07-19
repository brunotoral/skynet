require "test_helper"

class MissionAssignerTest < Minitest::Test
  def test_should_return_a_mission
    objetivo = Skynet::MissionAssigner.new.mission

    refute_equal objetivo, objetivo.empty?
  end
end
