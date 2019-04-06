
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-robot-config";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_default_robot_config/0.6.11-0.tar.gz;
    sha256 = "c19aa6886086d6b7c9e75ca9697b00e630444a59843d882ada32a36e73144624";
  };

  propagatedBuildInputs = [ cob-supported-robots roslaunch ];
  nativeBuildInputs = [ cob-supported-robots roslaunch catkin ];

  meta = {
    description = ''Default configuration of the different robots supported by the Care-O-bot stacks. Configuration is e.g. preconfigured joint positions.'';
    #license = lib.licenses.Apache 2.0;
  };
}
