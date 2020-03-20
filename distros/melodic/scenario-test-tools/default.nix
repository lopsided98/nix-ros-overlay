
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-sound, cob-srvs, control-msgs, geometry-msgs, move-base-msgs, rospy, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-melodic-scenario-test-tools";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/scenario_test_tools/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "f73d377c1ade62aa94ee9400c06e47be112b5dea2b7a57c825dfe9b032656cc9";
  };

  buildType = "catkin";
  checkInputs = [ cob-sound cob-srvs control-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib move-base-msgs rospy std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The scenario_test_tools package implements helpers for scriptable scenario testing.
    It allows to set up a test harness for eg. a state machine or other high level behavior by
    providing mocked implementations for various action servers and services that work together'';
    license = with lib.licenses; [ asl20 ];
  };
}
