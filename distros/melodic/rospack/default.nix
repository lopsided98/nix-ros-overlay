
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake-modules, gtest, pkg-config, python, pythonPackages, ros-environment, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-rospack";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rospack-release/archive/release/melodic/rospack/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "5d348a4428f344ecbde8d0ceed9d38b4326d45538d5875ead0b5498804d8f30e";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules gtest ];
  checkInputs = [ pythonPackages.coverage ];
  propagatedBuildInputs = [ boost pkg-config python pythonPackages.catkin-pkg pythonPackages.rosdep ros-environment tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
