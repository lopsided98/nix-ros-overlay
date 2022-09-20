
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-config";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_config/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "aeb0fd9cec54df5c8f3f158afbeb5c419d7d9122db683ce94f9881dfa457a317";
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
