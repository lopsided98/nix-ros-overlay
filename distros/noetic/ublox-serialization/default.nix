
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization }:
buildRosPackage {
  pname = "ros-noetic-ublox-serialization";
  version = "1.4.1-r2";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/noetic/ublox_serialization/1.4.1-2.tar.gz";
    name = "1.4.1-2.tar.gz";
    sha256 = "99b1445d71dce681e50a7d50580a74bf104e1c09a549d30b46f6e18e1e8146cb";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
