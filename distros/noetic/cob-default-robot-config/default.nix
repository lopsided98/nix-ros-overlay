
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-config";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_config/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "cd2348f05f7f491e10534d50c5a8eda97d3328ee70058ee6778f1cb4b7411909";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-supported-robots roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Default configuration of the different robots supported by the Care-O-bot stacks. Configuration is e.g. preconfigured joint positions.";
    license = with lib.licenses; [ asl20 ];
  };
}
