
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-gl-dependency";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gl_dependency-release/archive/release/noetic/gl_dependency/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "cbda6475567788aeaafdbd24a853944ef0a42b3dabf8a011df089bfd081d36a3";
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
