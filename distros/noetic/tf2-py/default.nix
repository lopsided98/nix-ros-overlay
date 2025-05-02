
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-py";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_py/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "9ea69d1cee3623ea206a42a22fc520e2a95098903cbcdf7cb18431847a00e171";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The tf2_py package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
