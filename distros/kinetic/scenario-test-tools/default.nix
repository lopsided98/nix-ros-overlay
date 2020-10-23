
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-sound, cob-srvs, control-msgs, geometry-msgs, move-base-msgs, pythonPackages, rospy, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-kinetic-scenario-test-tools";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/scenario_test_tools/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "5a46c390701584054da21a9c86a979159c81521c6db7d4df7aa23de176a095eb";
  };

  buildType = "catkin";
  checkInputs = [ cob-sound cob-srvs control-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib move-base-msgs rospy std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''The scenario_test_tools package implements helpers for scriptable scenario testing.
    It allows to set up a test harness for eg. a state machine or other high level behavior by
    providing mocked implementations for various action servers and services that work together'';
    license = with lib.licenses; [ asl20 ];
  };
}
