
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, cob-default-robot-config, cob-gazebo, cob-gazebo-worlds, cob-supported-robots, gazebo-ros, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-bringup-sim";
  version = "0.7.5-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_bringup_sim/0.7.5-2.tar.gz";
    name = "0.7.5-2.tar.gz";
    sha256 = "7f37d1f5eb547ad959305eb7e6ffb12d8c848a6b57199198fc0a0032100af1aa";
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
