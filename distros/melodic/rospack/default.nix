
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, gtest, pkg-config, python, pythonPackages, ros-environment, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-rospack";
  version = "2.5.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rospack-release/archive/release/melodic/rospack/2.5.5-1.tar.gz";
    name = "2.5.5-1.tar.gz";
    sha256 = "f3e8b07388ee8214a6dd22aec23cb2b6014829df8a446ddefc61db6dfba9f74c";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules gtest ];
  checkInputs = [ pythonPackages.coverage ];
  propagatedBuildInputs = [ boost pkg-config python pythonPackages.catkin-pkg pythonPackages.rosdep ros-environment tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
