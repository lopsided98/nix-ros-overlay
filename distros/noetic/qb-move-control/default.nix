
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-move-control";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move_control/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "854bd0da7dde90e565c83ef2c539b8062b00aaee5dd5d440f000b7f1cf90a147";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
