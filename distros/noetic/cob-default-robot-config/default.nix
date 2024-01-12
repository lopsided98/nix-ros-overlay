
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-supported-robots, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-cob-default-robot-config";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_default_robot_config/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "e06de95ade103c661afe2eafd292ec0c0e7f25233ec3e186d0e78b8d27466edb";
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
