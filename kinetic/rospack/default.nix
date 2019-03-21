
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, cmake-modules, boost, gtest, catkin, pythonPackages, tinyxml, pkg-config }:
buildRosPackage {
  pname = "ros-kinetic-rospack";
  version = "2.4.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/rospack-release/archive/release/kinetic/rospack/2.4.4-0.tar.gz;
    sha256 = "149f27ece8b24235aaea6ed37ab49d89ec00dad1fa77843ac93fb6836fccf3b4";
  };

  checkInputs = [ pythonPackages.coverage ];
  propagatedBuildInputs = [ python boost pythonPackages.rosdep pythonPackages.catkin-pkg tinyxml pkg-config ];
  nativeBuildInputs = [ python cmake-modules boost gtest catkin tinyxml pkg-config ];

  meta = {
    description = ''ROS Package Tool'';
    #license = lib.licenses.BSD;
  };
}
