
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, qb-device-gazebo, qb-device-hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-hand-gazebo";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand_gazebo/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "b45e409b6786b345281ed396d76e4fdd1976fbe9beab46d98dfe02b9a4416214";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros-control qb-device-gazebo qb-device-hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control plugins for qbrobotics® SoftHand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
