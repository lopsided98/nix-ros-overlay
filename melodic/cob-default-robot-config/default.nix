
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-supported-robots, roslaunch, catkin }:
buildRosPackage {
  pname = "ros-melodic-cob-default-robot-config";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/melodic/cob_default_robot_config/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "5109f04c5fed185e903c9e5f45b1e30aee30c32622f47e2359162106ed9f2939";
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
