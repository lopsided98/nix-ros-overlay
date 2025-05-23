
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-webkit-dependency";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/webkit_dependency-release/archive/release/noetic/webkit_dependency/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "7d39957fc65b3a85839837ceece885dbbbd4326d6f22509c0d54ccac3c4c1489";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ python3Packages.pyqt5_with_qtwebkit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This encapsulates the WebKit dependency for a specific ROS distribution and its Qt version";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
