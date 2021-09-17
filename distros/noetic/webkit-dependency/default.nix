
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-webkit-dependency";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/webkit_dependency-release/archive/release/noetic/webkit_dependency/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "09e635d456e54c6b42660c88062afe706b9d2bad7810d59b031eaf5cd701a7f0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.pyqt5_with_qtwebkit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the WebKit dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
