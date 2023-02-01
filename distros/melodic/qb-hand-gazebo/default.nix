
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, qb-device-gazebo, qb-device-hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-hand-gazebo";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand_gazebo/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "96c55044156774248bf33f0f00a90f18f6fd878cae824c916f83fa5d095b6089";
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
