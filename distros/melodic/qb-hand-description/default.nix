
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-qb-hand-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/melodic/qb_hand_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "95d0fbcd6f6d04fdae88fb2e6087f57ba833fb10d788a396c21dbe04c731120a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
