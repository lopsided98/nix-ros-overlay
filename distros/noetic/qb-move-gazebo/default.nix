
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, qb-device-gazebo, qb-device-hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-move-gazebo";
  version = "3.0.3-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move_gazebo/3.0.3-2.tar.gz";
    name = "3.0.3-2.tar.gz";
    sha256 = "34fe68d505300e511627ba6a0b78a9906d9402dd000b1d84dcb709ea0ce7690d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo-ros-control qb-device-gazebo qb-device-hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control plugins for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
