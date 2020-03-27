
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, cob-default-robot-config, cob-gazebo, cob-gazebo-worlds, cob-supported-robots, gazebo-ros, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup-sim";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_bringup_sim/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "dd4c8ff8cd97f5bc4dca170de42ba19456c6e694a526a9af43282596f04fa8d6";
  };

  buildType = "catkin";
  checkInputs = [ cob-default-env-config cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-default-env-config cob-default-robot-config cob-gazebo cob-gazebo-worlds gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for starting a simulated Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
