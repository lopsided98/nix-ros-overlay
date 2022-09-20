
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-move-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "2d1f33dc9544f001b41cd0c45f89465a068bda8b7a5948953d21581639069f5c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
