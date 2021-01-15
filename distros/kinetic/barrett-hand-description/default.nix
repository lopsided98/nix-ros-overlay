
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-barrett-hand-description";
  version = "0.1.2";

  src = fetchurl {
    url = "https://github.com/RobotnikAutomation/barrett_hand_common-release/archive/release/kinetic/barrett_hand_description/0.1.2-0.tar.gz";
    name = "0.1.2-0.tar.gz";
    sha256 = "21da44900cd52d4e3a5e343549b6d8cf3ebd797d42f332b3eddc0107dc472bc9";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The barrett_hand_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
