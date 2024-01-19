
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-gencpp";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gencpp-release/archive/release/noetic/gencpp/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "3cd1676629c01895c386837a4c0ed2a3fec51386f96749a8f8a160cb8493f82d";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ genmsg ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''C++ ROS message and service generators.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
