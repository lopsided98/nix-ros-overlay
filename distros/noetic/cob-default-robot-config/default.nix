
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-config";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_config/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "08a1eff200bc22eb8b6b0e3e875f3738aa35f2632d7d66c81762dd324c3cf375";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ cob-supported-robots roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Default configuration of the different robots supported by the Care-O-bot stacks. Configuration is e.g. preconfigured joint positions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
