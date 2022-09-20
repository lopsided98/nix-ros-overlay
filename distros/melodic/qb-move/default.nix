
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-move-control, qb-move-description, qb-move-hardware-interface }:
buildRosPackage {
  pname = "ros-melodic-qb-move";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbmove-ros-release/get/release/melodic/qb_move/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "1a320423c63420ddd649d7df7f9e5a973078788f6ca6f4ef5d0675eb69c4b62c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-move-control qb-move-description qb-move-hardware-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® qbmove device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
