
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-gl-dependency";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gl_dependency-release/archive/release/noetic/gl_dependency/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "8902c61f8050c400539da500f1687d65e25c3dbff7628b0f95cacd0d7655968a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.pyqt5 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This encapsulates the GL dependency for a specific ROS distribution and its Qt version";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
