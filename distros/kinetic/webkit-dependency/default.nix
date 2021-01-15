
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-webkit-dependency";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/webkit_dependency-release/archive/release/kinetic/webkit_dependency/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "5e90166cb40c736e14bcd5e97c99c90a038c787474e2678c5ea390d7e883c451";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pythonPackages.pyqt5_with_qtwebkit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the WebKit dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
