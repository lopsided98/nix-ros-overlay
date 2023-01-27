
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-move-description";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move_description/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "764ed1db3b405ec2dd97851e385e1ed79225f6fcf197d270fa25e6e233a0e456";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
