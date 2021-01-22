
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, cob-default-robot-config, cob-gazebo, cob-gazebo-worlds, cob-supported-robots, gazebo-ros, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-cob-bringup-sim";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/kinetic/cob_bringup_sim/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "fd4f5c964bfdd3da1303afb2181c0afcd61a89dd6e5f44fde3f1fd661533eda7";
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
