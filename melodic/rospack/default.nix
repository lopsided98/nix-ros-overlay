
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-environment, cmake-modules, boost, gtest, catkin, pkg-config, tinyxml-2 }:
buildRosPackage {
  pname = "ros-melodic-rospack";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rospack-release/archive/release/melodic/rospack/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "15345b7f4f0182539a528059fc7bc9f44af682f8cdc90a5514e1a4c236e76b8a";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules boost gtest pkg-config tinyxml-2 ];
  propagatedBuildInputs = [ ros-environment tinyxml-2 boost pkg-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS Package Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
