
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-sound, cob-srvs, control-msgs, geometry-msgs, move-base-msgs, python3Packages, rospy, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-scenario-test-tools";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/scenario_test_tools/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "eee3748aaf86644063a16cc7f1eb6a29a5ea53ace6d734e1b4cd9f5efc0d5529";
  };

  buildType = "catkin";
  checkInputs = [ cob-sound cob-srvs control-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib move-base-msgs rospy std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''The scenario_test_tools package implements helpers for scriptable scenario testing.
    It allows to set up a test harness for eg. a state machine or other high level behavior by
    providing mocked implementations for various action servers and services that work together'';
    license = with lib.licenses; [ asl20 ];
  };
}
