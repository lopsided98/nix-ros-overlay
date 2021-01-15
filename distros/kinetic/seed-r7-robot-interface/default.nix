
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, seed-r7-ros-controller }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-robot-interface";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_robot_interface/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "6d3e974a6ee2f28bad0bd6c637351960a5bf6d65a0cd06733a9ee7c95092d1de";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp seed-r7-ros-controller ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_robot_interface package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
