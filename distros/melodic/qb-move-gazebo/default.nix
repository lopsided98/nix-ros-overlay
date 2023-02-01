
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, qb-device-gazebo, qb-device-hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-move-gazebo";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move_gazebo/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "fb5f2dfdd2525eccf7b15878d5bffbea4686aff325e60878aa9e999cb0b2c166";
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
