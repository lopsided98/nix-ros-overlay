
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, cob-default-robot-config, cob-gazebo, cob-gazebo-worlds, cob-supported-robots, gazebo-ros, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-bringup-sim";
  version = "0.7.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_bringup_sim/0.7.6-1.tar.gz";
    name = "0.7.6-1.tar.gz";
    sha256 = "ef8347f2708c8f49fc87acbcbe510fdc70dbc3be97e7764c4d79429292bfbd91";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-default-env-config cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-default-env-config cob-default-robot-config cob-gazebo cob-gazebo-worlds gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for starting a simulated Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
