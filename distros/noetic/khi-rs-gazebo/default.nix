
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-noetic-khi-rs-gazebo";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_rs_gazebo/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "f51784b14b88a3fda4869c23073512b929b6d88c364e13a1f8f6e69c592cde99";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The khi_rs_gazebo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
