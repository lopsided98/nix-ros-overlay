
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, gtest, pkg-config, python3, python3Packages, ros-environment, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-rospack";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rospack-release/archive/release/noetic/rospack/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "60484b89cc155a3f80957bf6fbab7659175ef55af2ed44115d0ebb7b13b132c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules gtest ];
  checkInputs = [ python3Packages.coverage ];
  propagatedBuildInputs = [ boost pkg-config python3 python3Packages.catkin-pkg python3Packages.rosdep ros-environment tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ROS Package Tool";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
