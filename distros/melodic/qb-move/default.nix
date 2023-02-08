
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-move-control, qb-move-description, qb-move-gazebo, qb-move-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-move";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "9e1491309cb6956fb2ffb867bafbecbc65a051c160a54c7f715526eccb7b3812";
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
