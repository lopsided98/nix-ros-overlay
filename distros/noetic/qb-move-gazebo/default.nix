
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, qb-device-gazebo, qb-device-hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-move-gazebo";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/noetic/qb_move_gazebo/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "45d54aa657ed48fff70b90970ff8bd6fc84b4bd928a1f52dd422dc13bbfb498f";
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
