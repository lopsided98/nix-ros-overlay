
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, drone-assets, drone-wrapper, rqt-drone-teleop, rqt-ground-robot-teleop }:
buildRosPackage {
  pname = "ros-noetic-jderobot-drones";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/JdeRobot/drones-release/archive/release/noetic/jderobot_drones/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "77b06ac7a019f69390e1c3ec7f63fda32f2611bbd2bcc646aad9e0dd97062008";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ drone-assets drone-wrapper rqt-drone-teleop rqt-ground-robot-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jderobot_drones stack'';
    license = with lib.licenses; [ mit ];
  };
}
