
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-config";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_config/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "fe5ba87928b090b3f2c0ea5bdb884eb85e5d6134d18f5d009f5fa2cf7cf23eb0";
  };

  buildType = "catkin";
  checkInputs = [ cob-supported-robots roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Default configuration of the different robots supported by the Care-O-bot stacks. Configuration is e.g. preconfigured joint positions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
