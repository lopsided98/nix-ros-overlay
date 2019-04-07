
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, ros-environment, cmake-modules, boost, gtest, catkin, pythonPackages, pkg-config, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-rospack";
  version = "2.5.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/rospack-release/archive/release/melodic/rospack/2.5.3-0.tar.gz;
    sha256 = "0b9db7d9b7c20d8f36204d3bda08ef5cf41f3f8f7e009862102603b9daf65429";
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
