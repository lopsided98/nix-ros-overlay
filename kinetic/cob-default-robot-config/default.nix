
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-default-robot-config";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/kinetic/cob_default_robot_config/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "8f0e28cd509244d9ec7bfc731d418c497c179cf192b6e13851d5663c792f821d";
  };

  buildType = "catkin";
  buildInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-supported-robots roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Default configuration of the different robots supported by the Care-O-bot stacks. Configuration is e.g. preconfigured joint positions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
