
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-hand-description";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/noetic/qb_hand_description/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "ca55da147352f5eacad5cf2f80c4ed082fa8b8dbcb68d8077dd00d89e671bcfe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
