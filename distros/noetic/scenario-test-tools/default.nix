
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, cob-sound, cob-srvs, control-msgs, geometry-msgs, move-base-msgs, python3Packages, rospy, std-msgs, std-srvs, tf }:
buildRosPackage {
  pname = "ros-noetic-scenario-test-tools";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/scenario_test_tools/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "ea3967e8a5621aaeb94dbbd017e438e86c3f21dda613d07dda33a94e6eb58b28";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  checkInputs = [ cob-sound cob-srvs control-msgs geometry-msgs ];
  propagatedBuildInputs = [ actionlib move-base-msgs rospy std-msgs std-srvs tf ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "The scenario_test_tools package implements helpers for scriptable scenario testing.
    It allows to set up a test harness for eg. a state machine or other high level behavior by
    providing mocked implementations for various action servers and services that work together";
    license = with lib.licenses; [ asl20 ];
  };
}
