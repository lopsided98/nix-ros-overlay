
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, qb-device-gazebo, qb-device-hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-hand-gazebo";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand_gazebo/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "c94b754ea29339587636c92db35822fc7fa6aae82b6a71ab2ff958b98c4bf797";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros-control qb-device-gazebo qb-device-hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control plugins for qbrobotics® SoftHand device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
