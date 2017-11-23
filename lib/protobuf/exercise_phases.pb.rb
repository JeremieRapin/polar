#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'types.pb'; rescue LoadError; end
begin; require 'structures.pb'; rescue LoadError; end

module PolarData
  # forward declarations
  class PbPhaseGoal < ::ProtocolBuffers::Message; end
  class PbPhaseIntensity < ::ProtocolBuffers::Message; end
  class PbPhase < ::ProtocolBuffers::Message; end
  class PbPhases < ::ProtocolBuffers::Message; end

  class PbPhaseGoal < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module PhaseGoalType
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbPhaseGoal.PhaseGoalType"

      PHASE_GOAL_OFF = 0
      PHASE_GOAL_TIME = 1
      PHASE_GOAL_DISTANCE = 2
      PHASE_GOAL_INCREASING_HR = 3
      PHASE_GOAL_DECREASING_HR = 4
      PHASE_GOAL_RACE_PACE = 5
    end

    set_fully_qualified_name "polar_data.PbPhaseGoal"

    required ::PolarData::PbPhaseGoal::PhaseGoalType, :goal_type, 1
    optional ::PbDuration, :duration, 2
    optional :float, :distance, 3
    optional :uint32, :heart_rate, 4
  end

  class PbPhaseIntensity < ::ProtocolBuffers::Message
    # forward declarations
    class IntensityZone < ::ProtocolBuffers::Message; end

    # enums
    module PhaseIntensityType
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbPhaseIntensity.PhaseIntensityType"

      PHASE_INTENSITY_FREE = 0
      PHASE_INTENSITY_SPORTZONE = 1
      PHASE_INTENSITY_SPEED_ZONE = 2
      PHASE_INTENSITY_POWER_ZONE = 3
    end

    set_fully_qualified_name "polar_data.PbPhaseIntensity"

    # nested messages
    class IntensityZone < ::ProtocolBuffers::Message
      set_fully_qualified_name "polar_data.PbPhaseIntensity.IntensityZone"

      required :uint32, :lower, 1
      required :uint32, :upper, 2
    end

    required ::PolarData::PbPhaseIntensity::PhaseIntensityType, :intensity_type, 1
    optional ::PolarData::PbPhaseIntensity::IntensityZone, :heart_rate_zone, 2
    optional ::PolarData::PbPhaseIntensity::IntensityZone, :speed_zone, 3
    optional ::PolarData::PbPhaseIntensity::IntensityZone, :power_zone, 4
  end

  class PbPhase < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module PbPhaseChangeType
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbPhase.PbPhaseChangeType"

      CHANGE_MANUAL = 0
      CHANGE_AUTOMATIC = 1
    end

    set_fully_qualified_name "polar_data.PbPhase"

    required ::PbOneLineText, :name, 1
    required ::PolarData::PbPhase::PbPhaseChangeType, :change, 2
    required ::PolarData::PbPhaseGoal, :goal, 3
    required ::PolarData::PbPhaseIntensity, :intensity, 4
    optional :uint32, :repeat_count, 5
    optional :uint32, :jump_index, 6
  end

  class PbPhases < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbPhases"

    repeated ::PolarData::PbPhase, :phase, 1
  end

end