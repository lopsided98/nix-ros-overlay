
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, gtest, pkg-config, python3, python3Packages, ros-environment, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-rospack";
  version = "2.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rospack-release/archive/release/noetic/rospack/2.6.4-1.tar.gz";
    name = "2.6.4-1.tar.gz";
    sha256 = "2ae080163c566f601b854c002f6e05cd3a6482bf395722ea12855f1999338deb";
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
