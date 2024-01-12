
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-gl-dependency";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gl_dependency-release/archive/release/noetic/gl_dependency/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "0dd1355fce88a9e67f0ee0f2c223511f7686e5a07bbabaecb7663a732452daf3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.pyqt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the GL dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
