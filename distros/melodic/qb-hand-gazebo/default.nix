
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros-control, qb-device-gazebo, qb-device-hardware-interface, roscpp }:
buildRosPackage {
  pname = "ros-melodic-qb-hand-gazebo";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand_gazebo/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "fb9916de880cfad046048c1c8aaba90ba3a69697c447492faee196ca989977d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros-control qb-device-gazebo qb-device-hardware-interface roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the Gazebo ROS control plugins for qbrobotics® SoftHand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
