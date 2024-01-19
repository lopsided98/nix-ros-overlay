
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, qb-device-gazebo, qb-device-hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-hand-gazebo";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand_gazebo/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "abb679af37693a40dbdb1e0a359dd3d695683571066fa751c4cce1eed2f4aebb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo-ros-control qb-device-gazebo qb-device-hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control plugins for qbrobotics® SoftHand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
