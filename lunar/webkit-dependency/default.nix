
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-lunar-webkit-dependency";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/webkit_dependency-release/archive/release/lunar/webkit_dependency/1.1.0-0.tar.gz;
    sha256 = "c7cc33a438e32df0598628be3bf1c96c6011819706c23132f5ddebc591da90cb";
  };

  propagatedBuildInputs = [ pythonPackages.pyqt5_with_qtwebkit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the WebKit dependency for a specific ROS distribution and its Qt version'';
    #license = lib.licenses.BSD;
  };
}
