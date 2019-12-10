
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, seed-r7-ros-controller }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-robot-interface";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_robot_interface/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "22cfb94f6d403cd8e879e23747a4b8b84b298400d0ed488e5562a0620242549b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp seed-r7-ros-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_robot_interface package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
