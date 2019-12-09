
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tinyxml-2, boost, cmake-modules, pythonPackages, catkin, python, gtest, pkg-config, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-rospack";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rospack-release/archive/release/melodic/rospack/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "15345b7f4f0182539a528059fc7bc9f44af682f8cdc90a5514e1a4c236e76b8a";
  };

  buildType = "catkin";
  buildInputs = [ boost pkg-config cmake-modules python gtest tinyxml-2 ];
  checkInputs = [ pythonPackages.coverage ];
  propagatedBuildInputs = [ boost pkg-config pythonPackages.rosdep python pythonPackages.catkin-pkg tinyxml-2 ros-environment ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
