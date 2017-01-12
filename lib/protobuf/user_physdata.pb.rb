#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'types.pb'; rescue LoadError; end

module PolarData
  # forward declarations
  class PbUserBirthday < ::ProtocolBuffers::Message; end
  class PbUserGender < ::ProtocolBuffers::Message; end
  class PbUserHrAttribute < ::ProtocolBuffers::Message; end
  class PbUserWeight < ::ProtocolBuffers::Message; end
  class PbUserHeight < ::ProtocolBuffers::Message; end
  class PbUserVo2Max < ::ProtocolBuffers::Message; end
  class PbUserTrainingBackground < ::ProtocolBuffers::Message; end
  class PbUserTypicalDay < ::ProtocolBuffers::Message; end
  class PbWeeklyRecoveryTimeSum < ::ProtocolBuffers::Message; end
  class PbSpeedCalibrationOffset < ::ProtocolBuffers::Message; end
  class PbUserFunctionalThresholdPower < ::ProtocolBuffers::Message; end
  class PbUserPhysData < ::ProtocolBuffers::Message; end

  class PbUserBirthday < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbUserBirthday"

    required ::PbDate, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
  end

  class PbUserGender < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module Gender
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbUserGender.Gender"

      MALE = 1
      FEMALE = 2
    end

    set_fully_qualified_name "polar_data.PbUserGender"

    required ::PolarData::PbUserGender::Gender, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
  end

  class PbUserHrAttribute < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module HrSettingSource
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbUserHrAttribute.HrSettingSource"

      SOURCE_DEFAULT = 0
      SOURCE_AGE_BASED = 1
      SOURCE_USER = 2
      SOURCE_MEASURED = 3
      SOURCE_KEEP = 4
    end

    set_fully_qualified_name "polar_data.PbUserHrAttribute"

    required :uint32, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
    optional ::PolarData::PbUserHrAttribute::HrSettingSource, :setting_source, 3
  end

  class PbUserWeight < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module WeightSettingSource
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbUserWeight.WeightSettingSource"

      SOURCE_DEFAULT = 0
      SOURCE_USER = 2
      SOURCE_MEASURED = 3
    end

    set_fully_qualified_name "polar_data.PbUserWeight"

    required :float, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
    optional ::PolarData::PbUserWeight::WeightSettingSource, :setting_source, 3
  end

  class PbUserHeight < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbUserHeight"

    required :float, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
  end

  class PbUserVo2Max < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module Vo2MaxSettingSource
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbUserVo2Max.Vo2MaxSettingSource"

      SOURCE_DEFAULT = 0
      SOURCE_ESTIMATE = 1
      SOURCE_USER = 2
      SOURCE_FITNESSTEST = 3
    end

    set_fully_qualified_name "polar_data.PbUserVo2Max"

    required :uint32, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
    optional ::PolarData::PbUserVo2Max::Vo2MaxSettingSource, :setting_source, 3
  end

  class PbUserTrainingBackground < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module TrainingBackground
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbUserTrainingBackground.TrainingBackground"

      OCCASIONAL = 10
      REGULAR = 20
      FREQUENT = 30
      HEAVY = 40
      SEMI_PRO = 50
      PRO = 60
    end

    set_fully_qualified_name "polar_data.PbUserTrainingBackground"

    required ::PolarData::PbUserTrainingBackground::TrainingBackground, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
  end

  class PbUserTypicalDay < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module TypicalDay
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbUserTypicalDay.TypicalDay"

      MOSTLY_SITTING = 1
      MOSTLY_STANDING = 2
      MOSTLY_MOVING = 3
    end

    set_fully_qualified_name "polar_data.PbUserTypicalDay"

    required ::PolarData::PbUserTypicalDay::TypicalDay, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
  end

  class PbWeeklyRecoveryTimeSum < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbWeeklyRecoveryTimeSum"

    required :float, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
  end

  class PbSpeedCalibrationOffset < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbSpeedCalibrationOffset"

    required :float, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
  end

  class PbUserFunctionalThresholdPower < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module FTPSettingSource
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbUserFunctionalThresholdPower.FTPSettingSource"

      SOURCE_DEFAULT = 0
      SOURCE_ESTIMATE = 1
      SOURCE_USER = 2
    end

    set_fully_qualified_name "polar_data.PbUserFunctionalThresholdPower"

    required :uint32, :value, 1
    required ::PbSystemDateTime, :last_modified, 2
    optional ::PolarData::PbUserFunctionalThresholdPower::FTPSettingSource, :setting_source, 3
  end

  class PbUserPhysData < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbUserPhysData"

    required ::PolarData::PbUserBirthday, :birthday, 1
    required ::PolarData::PbUserGender, :gender, 2
    optional ::PolarData::PbUserWeight, :weight, 3
    optional ::PolarData::PbUserHeight, :height, 4
    optional ::PolarData::PbUserHrAttribute, :maximum_heartrate, 5
    optional ::PolarData::PbUserHrAttribute, :resting_heartrate, 6
    optional ::PolarData::PbUserHrAttribute, :OBSOLETE_sitting_heartrate, 7
    optional ::PolarData::PbUserHrAttribute, :aerobic_threshold, 8
    optional ::PolarData::PbUserHrAttribute, :anaerobic_threshold, 9
    optional ::PolarData::PbUserVo2Max, :vo2max, 10
    optional ::PolarData::PbUserTrainingBackground, :training_background, 11
    optional ::PolarData::PbUserTypicalDay, :typical_day, 12
    optional ::PolarData::PbWeeklyRecoveryTimeSum, :weekly_recovery_time_sum, 13
    optional ::PolarData::PbSpeedCalibrationOffset, :speed_calibration_offset, 14
    optional ::PolarData::PbUserFunctionalThresholdPower, :functional_threshold_power, 15
    optional ::PbSystemDateTime, :last_modified, 100
    optional ::PbLocalDateTime, :snapshot_start_time, 101
  end

end