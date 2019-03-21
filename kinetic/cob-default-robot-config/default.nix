
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-robot-config";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_default_robot_config/0.6.10-0.tar.gz;
    sha256 = "1fbc0126b0b6afafcaf75ceb9812883019dc8414f9a22005afff6434819ecd42";
  };

  propagatedBuildInputs = [ cob-supported-robots roslaunch ];
  nativeBuildInputs = [ cob-supported-robots roslaunch catkin ];

  meta = {
    description = ''Default configuration of the different robots supported by the Care-O-bot stacks. Configuration is e.g. preconfigured joint positions.'';
    #license = lib.licenses.Apache 2.0;
  };
}
