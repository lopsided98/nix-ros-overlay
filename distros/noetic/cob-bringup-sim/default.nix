
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-default-env-config, cob-default-robot-config, cob-gazebo, cob-gazebo-worlds, cob-supported-robots, gazebo-ros, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-bringup-sim";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_simulation-release/archive/release/noetic/cob_bringup_sim/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "e8ada0a116dc59e96e778dadfb9d4d451c52f456fe65e4d574424255f672c668";
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
