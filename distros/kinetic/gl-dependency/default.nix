
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-gl-dependency";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gl_dependency-release/archive/release/kinetic/gl_dependency/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "e253a8266d014f00b961a089835ba7e13748096f2e2ff5b056ea094b2d80835e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.pyqt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the GL dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
