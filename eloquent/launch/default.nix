
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, osrf-pycommon, pythonPackages, ament-flake8, ament-pep257, ament-index-python }:
buildRosPackage {
  pname = "ros-eloquent-launch";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/eloquent/launch/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "84e4293e60821d3c57e1a0c74c9374bede4aa6e20cf83a75bfcbea052d60d1f6";
  };

  buildType = "ament_python";
  buildInputs = [ osrf-pycommon ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ osrf-pycommon python3Packages.lark-parser ament-index-python ];

  meta = {
    description = ''The ROS launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
