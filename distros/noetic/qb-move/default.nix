
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-move-control, qb-move-description, qb-move-gazebo, qb-move-hardware-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-move";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "98ba71f6dcddd99e999f2f6cf0e54fb4bb58d5da1eeee3648c1bafd5972362d9";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-move-control qb-move-description qb-move-gazebo qb-move-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
