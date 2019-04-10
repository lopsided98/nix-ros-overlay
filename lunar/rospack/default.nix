
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, ros-environment, cmake-modules, boost, gtest, catkin, pythonPackages, pkg-config, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lunar-rospack";
  version = "2.5.2";

  src = fetchurl {
    url = https://github.com/ros-gbp/rospack-release/archive/release/lunar/rospack/2.5.2-0.tar.gz;
    sha256 = "8fc699702c7489509b70df8fe2ced490c5fbbe489233f5940174c56d2b70bd77";
  };

  buildInputs = [ python cmake-modules boost tinyxml-2 gtest pkg-config ];
  checkInputs = [ pythonPackages.coverage ];
  propagatedBuildInputs = [ python ros-environment boost tinyxml-2 pythonPackages.rosdep pythonPackages.catkin-pkg pkg-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package Tool'';
    #license = lib.licenses.BSD;
  };
}
